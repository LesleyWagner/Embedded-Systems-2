using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ES2_Ass4_Traffic_Control
{
    public enum ButtonType
    {
        PushButton,
        SwitchButton
    }
    class Message
    {
        public ButtonType btn_type;
        public string btn_id;
        public int state;
    }
}
