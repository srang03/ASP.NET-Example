﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DapperDBProject
{
    public class Model
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime Created { get; set; }
        public bool IsActive { get; set; }
    }
}