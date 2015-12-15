package emerald

import "encoding/json"

func Unmarshal(data string, v interface{}) error {
	err := json.Unmarshal([]byte(data), &v)
	return err
}

func Marshal(v interface{}) string {
	b, err := json.Marshal(v)
	if err != nil {
		return "{}"
	}
	return string(b)
}