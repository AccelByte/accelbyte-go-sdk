// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package admin_group

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

// SingleAdminDeleteGroupReader is a Reader for the SingleAdminDeleteGroup structure.
type SingleAdminDeleteGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SingleAdminDeleteGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSingleAdminDeleteGroupNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSingleAdminDeleteGroupUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSingleAdminDeleteGroupNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSingleAdminDeleteGroupInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v1/admin/namespaces/{namespace}/groups/{groupId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSingleAdminDeleteGroupNoContent creates a SingleAdminDeleteGroupNoContent with default headers values
func NewSingleAdminDeleteGroupNoContent() *SingleAdminDeleteGroupNoContent {
	return &SingleAdminDeleteGroupNoContent{}
}

/*SingleAdminDeleteGroupNoContent handles this case with default header values.

  No Content
*/
type SingleAdminDeleteGroupNoContent struct {
}

func (o *SingleAdminDeleteGroupNoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}][%d] singleAdminDeleteGroupNoContent ", 204)
}

func (o *SingleAdminDeleteGroupNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewSingleAdminDeleteGroupUnauthorized creates a SingleAdminDeleteGroupUnauthorized with default headers values
func NewSingleAdminDeleteGroupUnauthorized() *SingleAdminDeleteGroupUnauthorized {
	return &SingleAdminDeleteGroupUnauthorized{}
}

/*SingleAdminDeleteGroupUnauthorized handles this case with default header values.

  Unauthorized
*/
type SingleAdminDeleteGroupUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminDeleteGroupUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}][%d] singleAdminDeleteGroupUnauthorized  %+v", 401, o.Payload)
}

func (o *SingleAdminDeleteGroupUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminDeleteGroupUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminDeleteGroupNotFound creates a SingleAdminDeleteGroupNotFound with default headers values
func NewSingleAdminDeleteGroupNotFound() *SingleAdminDeleteGroupNotFound {
	return &SingleAdminDeleteGroupNotFound{}
}

/*SingleAdminDeleteGroupNotFound handles this case with default header values.

  Not Found
*/
type SingleAdminDeleteGroupNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminDeleteGroupNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}][%d] singleAdminDeleteGroupNotFound  %+v", 404, o.Payload)
}

func (o *SingleAdminDeleteGroupNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminDeleteGroupNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminDeleteGroupInternalServerError creates a SingleAdminDeleteGroupInternalServerError with default headers values
func NewSingleAdminDeleteGroupInternalServerError() *SingleAdminDeleteGroupInternalServerError {
	return &SingleAdminDeleteGroupInternalServerError{}
}

/*SingleAdminDeleteGroupInternalServerError handles this case with default header values.

  Internal Server Error
*/
type SingleAdminDeleteGroupInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminDeleteGroupInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}][%d] singleAdminDeleteGroupInternalServerError  %+v", 500, o.Payload)
}

func (o *SingleAdminDeleteGroupInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminDeleteGroupInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
