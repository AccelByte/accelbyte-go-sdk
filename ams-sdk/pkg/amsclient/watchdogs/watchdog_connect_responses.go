// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package watchdogs

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// WatchdogConnectReader is a Reader for the WatchdogConnect structure.
type WatchdogConnectReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *WatchdogConnectReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewWatchdogConnectOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ams/v1/namespaces/{namespace}/watchdogs/{watchdogID}/connect returns an error %d: %s", response.Code(), string(data))
	}
}

// NewWatchdogConnectOK creates a WatchdogConnectOK with default headers values
func NewWatchdogConnectOK() *WatchdogConnectOK {
	return &WatchdogConnectOK{}
}

/*WatchdogConnectOK handles this case with default header values.

  OK
*/
type WatchdogConnectOK struct {
}

func (o *WatchdogConnectOK) Error() string {
	return fmt.Sprintf("[GET /ams/v1/namespaces/{namespace}/watchdogs/{watchdogID}/connect][%d] watchdogConnectOK ", 200)
}

func (o *WatchdogConnectOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
