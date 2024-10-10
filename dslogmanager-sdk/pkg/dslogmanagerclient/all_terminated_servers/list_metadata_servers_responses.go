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

	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclientmodels"
)

// ListMetadataServersReader is a Reader for the ListMetadataServers structure.
type ListMetadataServersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListMetadataServersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListMetadataServersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListMetadataServersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListMetadataServersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListMetadataServersInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dslogmanager/servers/metadata returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListMetadataServersOK creates a ListMetadataServersOK with default headers values
func NewListMetadataServersOK() *ListMetadataServersOK {
	return &ListMetadataServersOK{}
}

/*ListMetadataServersOK handles this case with default header values.

  OK
*/
type ListMetadataServersOK struct {
	Payload *dslogmanagerclientmodels.ModelsListTerminatedServersResponse
}

func (o *ListMetadataServersOK) Error() string {
	return fmt.Sprintf("[POST /dslogmanager/servers/metadata][%d] listMetadataServersOK  %+v", 200, o.ToJSONString())
}

func (o *ListMetadataServersOK) ToJSONString() string {
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

func (o *ListMetadataServersOK) GetPayload() *dslogmanagerclientmodels.ModelsListTerminatedServersResponse {
	return o.Payload
}

func (o *ListMetadataServersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dslogmanagerclientmodels.ModelsListTerminatedServersResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListMetadataServersBadRequest creates a ListMetadataServersBadRequest with default headers values
func NewListMetadataServersBadRequest() *ListMetadataServersBadRequest {
	return &ListMetadataServersBadRequest{}
}

/*ListMetadataServersBadRequest handles this case with default header values.

  Bad Request
*/
type ListMetadataServersBadRequest struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *ListMetadataServersBadRequest) Error() string {
	return fmt.Sprintf("[POST /dslogmanager/servers/metadata][%d] listMetadataServersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListMetadataServersBadRequest) ToJSONString() string {
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

func (o *ListMetadataServersBadRequest) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *ListMetadataServersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dslogmanagerclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListMetadataServersUnauthorized creates a ListMetadataServersUnauthorized with default headers values
func NewListMetadataServersUnauthorized() *ListMetadataServersUnauthorized {
	return &ListMetadataServersUnauthorized{}
}

/*ListMetadataServersUnauthorized handles this case with default header values.

  Unauthorized
*/
type ListMetadataServersUnauthorized struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *ListMetadataServersUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dslogmanager/servers/metadata][%d] listMetadataServersUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListMetadataServersUnauthorized) ToJSONString() string {
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

func (o *ListMetadataServersUnauthorized) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *ListMetadataServersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dslogmanagerclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListMetadataServersInternalServerError creates a ListMetadataServersInternalServerError with default headers values
func NewListMetadataServersInternalServerError() *ListMetadataServersInternalServerError {
	return &ListMetadataServersInternalServerError{}
}

/*ListMetadataServersInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ListMetadataServersInternalServerError struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *ListMetadataServersInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dslogmanager/servers/metadata][%d] listMetadataServersInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListMetadataServersInternalServerError) ToJSONString() string {
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

func (o *ListMetadataServersInternalServerError) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *ListMetadataServersInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dslogmanagerclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
