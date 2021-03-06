// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package admin_content

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// SingleAdminDeleteContentReader is a Reader for the SingleAdminDeleteContent structure.
type SingleAdminDeleteContentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SingleAdminDeleteContentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSingleAdminDeleteContentNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSingleAdminDeleteContentUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSingleAdminDeleteContentNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSingleAdminDeleteContentInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSingleAdminDeleteContentNoContent creates a SingleAdminDeleteContentNoContent with default headers values
func NewSingleAdminDeleteContentNoContent() *SingleAdminDeleteContentNoContent {
	return &SingleAdminDeleteContentNoContent{}
}

/*SingleAdminDeleteContentNoContent handles this case with default header values.

  No Content
*/
type SingleAdminDeleteContentNoContent struct {
}

func (o *SingleAdminDeleteContentNoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminDeleteContentNoContent ", 204)
}

func (o *SingleAdminDeleteContentNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewSingleAdminDeleteContentUnauthorized creates a SingleAdminDeleteContentUnauthorized with default headers values
func NewSingleAdminDeleteContentUnauthorized() *SingleAdminDeleteContentUnauthorized {
	return &SingleAdminDeleteContentUnauthorized{}
}

/*SingleAdminDeleteContentUnauthorized handles this case with default header values.

  Unauthorized
*/
type SingleAdminDeleteContentUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminDeleteContentUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminDeleteContentUnauthorized  %+v", 401, o.Payload)
}

func (o *SingleAdminDeleteContentUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminDeleteContentUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminDeleteContentNotFound creates a SingleAdminDeleteContentNotFound with default headers values
func NewSingleAdminDeleteContentNotFound() *SingleAdminDeleteContentNotFound {
	return &SingleAdminDeleteContentNotFound{}
}

/*SingleAdminDeleteContentNotFound handles this case with default header values.

  Not Found
*/
type SingleAdminDeleteContentNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminDeleteContentNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminDeleteContentNotFound  %+v", 404, o.Payload)
}

func (o *SingleAdminDeleteContentNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminDeleteContentNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminDeleteContentInternalServerError creates a SingleAdminDeleteContentInternalServerError with default headers values
func NewSingleAdminDeleteContentInternalServerError() *SingleAdminDeleteContentInternalServerError {
	return &SingleAdminDeleteContentInternalServerError{}
}

/*SingleAdminDeleteContentInternalServerError handles this case with default header values.

  Internal Server Error
*/
type SingleAdminDeleteContentInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminDeleteContentInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminDeleteContentInternalServerError  %+v", 500, o.Payload)
}

func (o *SingleAdminDeleteContentInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminDeleteContentInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
