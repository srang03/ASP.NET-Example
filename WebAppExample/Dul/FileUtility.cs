using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace Dul
{
    public class FileUtility
    {
        public static string GetFileNameWithNumbering(string dir, string name)
        {
            // 순수 파일명 : Test
            string strName = Path.GetFileNameWithoutExtension(name);
            // 확장자 : .txt
            string extension = Path.GetExtension(name);
            bool blnExists = true;
            int i = 0;
            while (blnExists)
            {
                if(File.Exists(Path.Combine(dir, name)))
                {
                    name = strName + "_" + (++i) + extension;
                }
                else
                {
                    blnExists = false;
                }
            }
            return name;
        }
    }
}
