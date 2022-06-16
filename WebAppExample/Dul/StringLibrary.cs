using System;
using System.Collections.Generic;
using System.Text;

namespace Dul
{
    public static class StringLibrary
    {
        
        /// <summary>
        /// 주어진 문자열을 주어진 길이만큼만 잘라서 반환한다.
        /// 나머지 부분은 '...'을 붙인다.
        /// </summary>
        /// <param name="strCut">원본 문자열</param>
        /// <param name="intChar">잘라낼 길이</param>
        /// <returns>안녕하세요. => 안녕...</returns>
        public static string CutString(this string strCut, int intChar)
        {
            if(strCut.Length > (intChar - 3))
            {
                return strCut.Substring(0, intChar - 3) + "...";
            }
            return strCut;
        }

        /// <summary>
        /// 유니코드 이모티콘을 포함한 문자열을 자르는 기능이다.
        /// </summary>
        /// <param name="str">한글, 영어, 유니코드 문자열</param>
        /// <param name="length">자를 문자열의 길이</param>
        /// <returns>잘라진 문자열을 반환한다.</returns>
        public static string CutStringUniCode(this string str, int length)
        {
            string result = str;

            var si = new System.Globalization.StringInfo(str);
            var l = si.LengthInTextElements;

            if( l > (length - 3))
            {
                result = si.SubstringByTextElements(0, length - 3) +  "...";
            }
            return result;
        }
    }
}
