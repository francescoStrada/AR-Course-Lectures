using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpinningObject : MonoBehaviour {

    public float speed = 20f;

    private Vector3 _rotationDirection = Vector3.up;

    public void Start()
    {
        Debug.Log("Toggling rotation direction");

        if (_rotationDirection == Vector3.up)
        {
            _rotationDirection = Vector3.down;
        }
        else
        {
            _rotationDirection = Vector3.up;
        }
    }

    void Update()
    {
        transform.Rotate(_rotationDirection * Time.deltaTime * speed);
    }
}
