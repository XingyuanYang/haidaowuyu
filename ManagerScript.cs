using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ManagerScript : MonoBehaviour
{
    //灌木
    public int P01G1L1_int;
    public bool P01G1L1_bool;
    public int P01G1L2_int;
    public bool P01G1L2_bool;
    public int P01G1L3_int;
    public bool P01G1L3_bool;

    //高蘑菇
    public int P02G1L1_int;
    public bool P02G1L1_bool;
    public int P02G1L2_int;
    public bool P02G1L2_bool;
    public int P02G1L3_int;
    public bool P02G1L3_bool;

    //animal



    public GameObject managerScript;

    void Start()
    {
        ManagerScript script = managerScript.GetComponent<ManagerScript>();
    
        //灌木
        if (ES2.Exists("file.txt?tag=P01G1L1_intTag"))
        {
            script.P01G1L1_int = ES2.Load<int>("file.txt?tag=P01G1L1_intTag");
        }
        if (ES2.Exists("file.txt?tag=P01G1L2_intTag"))
        {
            script.P01G1L2_int = ES2.Load<int>("file.txt?tag=P01G1L2_intTag");
        }
        if (ES2.Exists("file.txt?tag=P01G1L3_intTag"))
        {
            script.P01G1L3_int = ES2.Load<int>("file.txt?tag=P01G1L3_intTag");
        }
        if (ES2.Exists("file.txt?tag=P01G1L1_boolTag"))
        {
            script.P01G1L1_bool = ES2.Load<bool>("file.txt?tag=P01G1L1_boolTag");
        }
        if (ES2.Exists("file.txt?tag=P01G1L2_boolTag"))
        {
            script.P01G1L2_bool = ES2.Load<bool>("file.txt?tag=P01G1L2_boolTag");
        }
        if (ES2.Exists("file.txt?tag=P01G1L3_boolTag"))
        {
            script.P01G1L3_bool = ES2.Load<bool>("file.txt?tag=P01G1L3_boolTag");
        }

        //高蘑菇
        if (ES2.Exists("file.txt?tag=P02G1L1_intTag"))
        {
            script.P02G1L1_int = ES2.Load<int>("file.txt?tag=P02G1L1_intTag");
        }
        if (ES2.Exists("file.txt?tag=P02G1L2_intTag"))
        {
            script.P02G1L2_int = ES2.Load<int>("file.txt?tag=P02G1L2_intTag");
        }
        if (ES2.Exists("file.txt?tag=P02G1L3_intTag"))
        {
            script.P02G1L3_int = ES2.Load<int>("file.txt?tag=P02G1L3_intTag");
        }
        if (ES2.Exists("file.txt?tag=P02G1L1_boolTag"))
        {
            script.P02G1L1_bool = ES2.Load<bool>("file.txt?tag=P02G1L1_boolTag");
        }
        if (ES2.Exists("file.txt?tag=P02G1L2_boolTag"))
        {
            script.P02G1L2_bool = ES2.Load<bool>("file.txt?tag=P02G1L2_boolTag");
        }
        if (ES2.Exists("file.txt?tag=P02G1L3_boolTag"))
        {
            script.P02G1L3_bool = ES2.Load<bool>("file.txt?tag=P02G1L3_boolTag");
        }

    }
}
