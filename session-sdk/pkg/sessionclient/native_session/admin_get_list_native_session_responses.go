// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package native_session

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// AdminGetListNativeSessionReader is a Reader for the AdminGetListNativeSession structure.
type AdminGetListNativeSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetListNativeSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetListNativeSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetListNativeSessionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetListNativeSessionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/namespaces/{namespace}/native-sessions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetListNativeSessionOK creates a AdminGetListNativeSessionOK with default headers values
func NewAdminGetListNativeSessionOK() *AdminGetListNativeSessionOK {
	return &AdminGetListNativeSessionOK{}
}

/*AdminGetListNativeSessionOK handles this case with default header values.

  OK
*/
type AdminGetListNativeSessionOK struct {
	Payload *sessionclientmodels.ApimodelsNativeSessionPagingResponse
}

func (o *AdminGetListNativeSessionOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/native-sessions][%d] adminGetListNativeSessionOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetListNativeSessionOK) ToJSONString() string {
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

func (o *AdminGetListNativeSessionOK) GetPayload() *sessionclientmodels.ApimodelsNativeSessionPagingResponse {
	return o.Payload
}

func (o *AdminGetListNativeSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsNativeSessionPagingResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListNativeSessionUnauthorized creates a AdminGetListNativeSessionUnauthorized with default headers values
func NewAdminGetListNativeSessionUnauthorized() *AdminGetListNativeSessionUnauthorized {
	return &AdminGetListNativeSessionUnauthorized{}
}

/*AdminGetListNativeSessionUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetListNativeSessionUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetListNativeSessionUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/native-sessions][%d] adminGetListNativeSessionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetListNativeSessionUnauthorized) ToJSONString() string {
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

func (o *AdminGetListNativeSessionUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetListNativeSessionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListNativeSessionForbidden creates a AdminGetListNativeSessionForbidden with default headers values
func NewAdminGetListNativeSessionForbidden() *AdminGetListNativeSessionForbidden {
	return &AdminGetListNativeSessionForbidden{}
}

/*AdminGetListNativeSessionForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetListNativeSessionForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetListNativeSessionForbidden) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/native-sessions][%d] adminGetListNativeSessionForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetListNativeSessionForbidden) ToJSONString() string {
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

func (o *AdminGetListNativeSessionForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetListNativeSessionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
