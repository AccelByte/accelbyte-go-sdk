// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_channel

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// SingleAdminGetChannelReader is a Reader for the SingleAdminGetChannel structure.
type SingleAdminGetChannelReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SingleAdminGetChannelReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSingleAdminGetChannelOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSingleAdminGetChannelBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSingleAdminGetChannelUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSingleAdminGetChannelInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/admin/namespaces/{namespace}/channels returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSingleAdminGetChannelOK creates a SingleAdminGetChannelOK with default headers values
func NewSingleAdminGetChannelOK() *SingleAdminGetChannelOK {
	return &SingleAdminGetChannelOK{}
}

/*SingleAdminGetChannelOK handles this case with default header values.

  Get channels
*/
type SingleAdminGetChannelOK struct {
	Payload *ugcclientmodels.ModelsPaginatedGetChannelResponse
}

func (o *SingleAdminGetChannelOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/channels][%d] singleAdminGetChannelOK  %+v", 200, o.ToJSONString())
}

func (o *SingleAdminGetChannelOK) ToJSONString() string {
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

func (o *SingleAdminGetChannelOK) GetPayload() *ugcclientmodels.ModelsPaginatedGetChannelResponse {
	return o.Payload
}

func (o *SingleAdminGetChannelOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedGetChannelResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminGetChannelBadRequest creates a SingleAdminGetChannelBadRequest with default headers values
func NewSingleAdminGetChannelBadRequest() *SingleAdminGetChannelBadRequest {
	return &SingleAdminGetChannelBadRequest{}
}

/*SingleAdminGetChannelBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770702</td><td>invalid paging parameter</td></tr></table>
*/
type SingleAdminGetChannelBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminGetChannelBadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/channels][%d] singleAdminGetChannelBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SingleAdminGetChannelBadRequest) ToJSONString() string {
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

func (o *SingleAdminGetChannelBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminGetChannelBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminGetChannelUnauthorized creates a SingleAdminGetChannelUnauthorized with default headers values
func NewSingleAdminGetChannelUnauthorized() *SingleAdminGetChannelUnauthorized {
	return &SingleAdminGetChannelUnauthorized{}
}

/*SingleAdminGetChannelUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SingleAdminGetChannelUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminGetChannelUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/channels][%d] singleAdminGetChannelUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SingleAdminGetChannelUnauthorized) ToJSONString() string {
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

func (o *SingleAdminGetChannelUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminGetChannelUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminGetChannelInternalServerError creates a SingleAdminGetChannelInternalServerError with default headers values
func NewSingleAdminGetChannelInternalServerError() *SingleAdminGetChannelInternalServerError {
	return &SingleAdminGetChannelInternalServerError{}
}

/*SingleAdminGetChannelInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770700</td><td>Unable get user channels</td></tr></table>
*/
type SingleAdminGetChannelInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminGetChannelInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/channels][%d] singleAdminGetChannelInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SingleAdminGetChannelInternalServerError) ToJSONString() string {
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

func (o *SingleAdminGetChannelInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminGetChannelInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
