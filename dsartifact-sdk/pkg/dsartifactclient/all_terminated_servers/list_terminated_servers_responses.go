// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package all_terminated_servers

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclientmodels"
)

// ListTerminatedServersReader is a Reader for the ListTerminatedServers structure.
type ListTerminatedServersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListTerminatedServersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListTerminatedServersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListTerminatedServersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListTerminatedServersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListTerminatedServersInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsartifact/servers/search returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListTerminatedServersOK creates a ListTerminatedServersOK with default headers values
func NewListTerminatedServersOK() *ListTerminatedServersOK {
	return &ListTerminatedServersOK{}
}

/*ListTerminatedServersOK handles this case with default header values.

  OK
*/
type ListTerminatedServersOK struct {
	Payload *dsartifactclientmodels.ModelsListTerminatedServersResponse
}

func (o *ListTerminatedServersOK) Error() string {
	return fmt.Sprintf("[GET /dsartifact/servers/search][%d] listTerminatedServersOK  %+v", 200, o.ToJSONString())
}

func (o *ListTerminatedServersOK) ToJSONString() string {
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

func (o *ListTerminatedServersOK) GetPayload() *dsartifactclientmodels.ModelsListTerminatedServersResponse {
	return o.Payload
}

func (o *ListTerminatedServersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ModelsListTerminatedServersResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListTerminatedServersBadRequest creates a ListTerminatedServersBadRequest with default headers values
func NewListTerminatedServersBadRequest() *ListTerminatedServersBadRequest {
	return &ListTerminatedServersBadRequest{}
}

/*ListTerminatedServersBadRequest handles this case with default header values.

  Bad Request
*/
type ListTerminatedServersBadRequest struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ListTerminatedServersBadRequest) Error() string {
	return fmt.Sprintf("[GET /dsartifact/servers/search][%d] listTerminatedServersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListTerminatedServersBadRequest) ToJSONString() string {
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

func (o *ListTerminatedServersBadRequest) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ListTerminatedServersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListTerminatedServersUnauthorized creates a ListTerminatedServersUnauthorized with default headers values
func NewListTerminatedServersUnauthorized() *ListTerminatedServersUnauthorized {
	return &ListTerminatedServersUnauthorized{}
}

/*ListTerminatedServersUnauthorized handles this case with default header values.

  Unauthorized
*/
type ListTerminatedServersUnauthorized struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ListTerminatedServersUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsartifact/servers/search][%d] listTerminatedServersUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListTerminatedServersUnauthorized) ToJSONString() string {
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

func (o *ListTerminatedServersUnauthorized) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ListTerminatedServersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListTerminatedServersInternalServerError creates a ListTerminatedServersInternalServerError with default headers values
func NewListTerminatedServersInternalServerError() *ListTerminatedServersInternalServerError {
	return &ListTerminatedServersInternalServerError{}
}

/*ListTerminatedServersInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ListTerminatedServersInternalServerError struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ListTerminatedServersInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsartifact/servers/search][%d] listTerminatedServersInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListTerminatedServersInternalServerError) ToJSONString() string {
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

func (o *ListTerminatedServersInternalServerError) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ListTerminatedServersInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
