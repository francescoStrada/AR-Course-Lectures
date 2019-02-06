namespace Mapbox.Examples
{
	using Mapbox.Unity.Location;
	using Mapbox.Unity.Map;
    using System.Collections.Generic;
    using UnityEngine;
    using System.Linq;
    using System;

    [System.Serializable]
    public class POI
    {
        public string name;
        public Mapbox.Utils.Vector2d latitudeLongitude;
        public GameObject poiPIN;
        public InfoPoint infoPoint;

        public double Distance(Mapbox.Utils.Vector2d pos)
        {
            return (pos - latitudeLongitude).sqrMagnitude;
        }
    }

    public class POILocator : MonoBehaviour
	{
        public event Action ReachedRouteEnd;

        [SerializeField]
        protected double minDistanceDelta = 0.0000000001;

        [SerializeField]
        protected List<POI> poiList = new List<POI>();

        bool _isInitialized;

		ILocationProvider _locationProvider;
		ILocationProvider LocationProvider
		{
			get
			{
				if (_locationProvider == null)
				{
					_locationProvider = LocationProviderFactory.Instance.DefaultLocationProvider;
				}

				return _locationProvider;
			}
		}

		Vector3 _targetPosition;

		void Start()
		{
			LocationProviderFactory.Instance.mapManager.OnInitialized += ProviderInitialized;
		}

        void ProviderInitialized()
        {
            _isInitialized = true;
            // place POIs
            var map = LocationProviderFactory.Instance.mapManager;
            LocationProviderFactory.Instance.mapManager.OnInitialized -= ProviderInitialized;
            LocationProviderFactory.Instance.DefaultLocationProvider.OnLocationUpdated += OnFakeLocationUpdated;

            foreach (var poi in poiList)
            {
                if(poi.poiPIN != null)
                {
                    GameObject target = Instantiate(poi.poiPIN);
                    target.transform.parent = transform.parent;
                    target.name = poi.name;

                    target.transform.localPosition = map.GeoToWorldPosition(poi.latitudeLongitude);
                    Debug.Log("POI position " + poi.latitudeLongitude + " to " + target.transform.localPosition);
                }
                    
            }
        }
        void OnFakeLocationUpdated(Unity.Location.Location location)
        {
            
            if(poiList.Last().Distance(location.LatitudeLongitude) < minDistanceDelta)
            {
                if (ReachedRouteEnd != null)
                    ReachedRouteEnd.Invoke();

                Debug.Log("Reached End of route");

                if(poiList.Last().infoPoint != null && !poiList.Last().infoPoint.fired)
                    poiList.Last().infoPoint.Terminate();
                else
                    FindObjectOfType<EditorLocationProviderLocationLog>().paused = true;

                LocationProviderFactory.Instance.DefaultLocationProvider.OnLocationUpdated -= OnFakeLocationUpdated;
                return;
            }

            foreach(var poi in poiList)
            {
                if (poi.Distance(location.LatitudeLongitude) < minDistanceDelta && poi.infoPoint != null && !poi.infoPoint.fired)
                {
                    //Debug.Log("reached POI " + poi.name);
                    poi.infoPoint.Trigger(this);
                    return;
                }
            }
            
            
        }
        /*void LateUpdate()
		{
			if (_isInitialized)
			{
				var map = LocationProviderFactory.Instance.mapManager;
				transform.localPosition = map.GeoToWorldPosition(LocationProvider.CurrentLocation.LatitudeLongitude);
			}
		}*/
    }
}