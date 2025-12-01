// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package async_messaging

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// ListTopicsHandlerReader is a Reader for the ListTopicsHandler structure.
type ListTopicsHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListTopicsHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListTopicsHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListTopicsHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListTopicsHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewListTopicsHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListTopicsHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListTopicsHandlerOK creates a ListTopicsHandlerOK with default headers values
func NewListTopicsHandlerOK() *ListTopicsHandlerOK {
	return &ListTopicsHandlerOK{}
}

/*ListTopicsHandlerOK handles this case with default header values.

  OK
*/
type ListTopicsHandlerOK struct {
	Payload *csmclientmodels.ApimodelListTopicsResponse
}

func (o *ListTopicsHandlerOK) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics][%d] listTopicsHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *ListTopicsHandlerOK) ToJSONString() string {
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

func (o *ListTopicsHandlerOK) GetPayload() *csmclientmodels.ApimodelListTopicsResponse {
	return o.Payload
}

func (o *ListTopicsHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelListTopicsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListTopicsHandlerBadRequest creates a ListTopicsHandlerBadRequest with default headers values
func NewListTopicsHandlerBadRequest() *ListTopicsHandlerBadRequest {
	return &ListTopicsHandlerBadRequest{}
}

/*ListTopicsHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type ListTopicsHandlerBadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *ListTopicsHandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics][%d] listTopicsHandlerBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListTopicsHandlerBadRequest) ToJSONString() string {
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

func (o *ListTopicsHandlerBadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ListTopicsHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListTopicsHandlerUnauthorized creates a ListTopicsHandlerUnauthorized with default headers values
func NewListTopicsHandlerUnauthorized() *ListTopicsHandlerUnauthorized {
	return &ListTopicsHandlerUnauthorized{}
}

/*ListTopicsHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type ListTopicsHandlerUnauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *ListTopicsHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics][%d] listTopicsHandlerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListTopicsHandlerUnauthorized) ToJSONString() string {
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

func (o *ListTopicsHandlerUnauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ListTopicsHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListTopicsHandlerForbidden creates a ListTopicsHandlerForbidden with default headers values
func NewListTopicsHandlerForbidden() *ListTopicsHandlerForbidden {
	return &ListTopicsHandlerForbidden{}
}

/*ListTopicsHandlerForbidden handles this case with default header values.

  Forbidden
*/
type ListTopicsHandlerForbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *ListTopicsHandlerForbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics][%d] listTopicsHandlerForbidden  %+v", 403, o.ToJSONString())
}

func (o *ListTopicsHandlerForbidden) ToJSONString() string {
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

func (o *ListTopicsHandlerForbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ListTopicsHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListTopicsHandlerInternalServerError creates a ListTopicsHandlerInternalServerError with default headers values
func NewListTopicsHandlerInternalServerError() *ListTopicsHandlerInternalServerError {
	return &ListTopicsHandlerInternalServerError{}
}

/*ListTopicsHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ListTopicsHandlerInternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *ListTopicsHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics][%d] listTopicsHandlerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListTopicsHandlerInternalServerError) ToJSONString() string {
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

func (o *ListTopicsHandlerInternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ListTopicsHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
