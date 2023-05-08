// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session_platform

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// RegisterXblSessionsReader is a Reader for the RegisterXblSessions structure.
type RegisterXblSessionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RegisterXblSessionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRegisterXblSessionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRegisterXblSessionsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/session/xbl returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRegisterXblSessionsOK creates a RegisterXblSessionsOK with default headers values
func NewRegisterXblSessionsOK() *RegisterXblSessionsOK {
	return &RegisterXblSessionsOK{}
}

/*RegisterXblSessionsOK handles this case with default header values.

  OK
*/
type RegisterXblSessionsOK struct {
	Payload map[string]interface{}
}

func (o *RegisterXblSessionsOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/session/xbl][%d] registerXblSessionsOK  %+v", 200, o.ToJSONString())
}

func (o *RegisterXblSessionsOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *RegisterXblSessionsOK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *RegisterXblSessionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRegisterXblSessionsBadRequest creates a RegisterXblSessionsBadRequest with default headers values
func NewRegisterXblSessionsBadRequest() *RegisterXblSessionsBadRequest {
	return &RegisterXblSessionsBadRequest{}
}

/*RegisterXblSessionsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type RegisterXblSessionsBadRequest struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *RegisterXblSessionsBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/session/xbl][%d] registerXblSessionsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *RegisterXblSessionsBadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *RegisterXblSessionsBadRequest) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *RegisterXblSessionsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
