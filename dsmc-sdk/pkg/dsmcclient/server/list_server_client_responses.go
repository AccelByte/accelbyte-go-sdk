// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package server

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// ListServerClientReader is a Reader for the ListServerClient structure.
type ListServerClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListServerClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListServerClientOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListServerClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListServerClientInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/namespaces/{namespace}/servers returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListServerClientOK creates a ListServerClientOK with default headers values
func NewListServerClientOK() *ListServerClientOK {
	return &ListServerClientOK{}
}

/*ListServerClientOK handles this case with default header values.

  servers listed
*/
type ListServerClientOK struct {
	Payload *dsmcclientmodels.ModelsListServerResponse
}

func (o *ListServerClientOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/servers][%d] listServerClientOK  %+v", 200, o.ToJSONString())
}

func (o *ListServerClientOK) ToJSONString() string {
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

func (o *ListServerClientOK) GetPayload() *dsmcclientmodels.ModelsListServerResponse {
	return o.Payload
}

func (o *ListServerClientOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsListServerResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListServerClientUnauthorized creates a ListServerClientUnauthorized with default headers values
func NewListServerClientUnauthorized() *ListServerClientUnauthorized {
	return &ListServerClientUnauthorized{}
}

/*ListServerClientUnauthorized handles this case with default header values.

  Unauthorized
*/
type ListServerClientUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ListServerClientUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/servers][%d] listServerClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListServerClientUnauthorized) ToJSONString() string {
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

func (o *ListServerClientUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ListServerClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListServerClientInternalServerError creates a ListServerClientInternalServerError with default headers values
func NewListServerClientInternalServerError() *ListServerClientInternalServerError {
	return &ListServerClientInternalServerError{}
}

/*ListServerClientInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ListServerClientInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ListServerClientInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/servers][%d] listServerClientInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListServerClientInternalServerError) ToJSONString() string {
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

func (o *ListServerClientInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ListServerClientInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
