// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package admin_channel

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

// AdminGetChannelReader is a Reader for the AdminGetChannel structure.
type AdminGetChannelReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetChannelReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetChannelOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetChannelUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetChannelNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetChannelInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetChannelOK creates a AdminGetChannelOK with default headers values
func NewAdminGetChannelOK() *AdminGetChannelOK {
	return &AdminGetChannelOK{}
}

/*AdminGetChannelOK handles this case with default header values.

  OK
*/
type AdminGetChannelOK struct {
	Payload *ugcclientmodels.ModelsPaginatedGetChannelResponse
}

func (o *AdminGetChannelOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels][%d] adminGetChannelOK  %+v", 200, o.Payload)
}

func (o *AdminGetChannelOK) GetPayload() *ugcclientmodels.ModelsPaginatedGetChannelResponse {
	return o.Payload
}

func (o *AdminGetChannelOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ModelsPaginatedGetChannelResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetChannelUnauthorized creates a AdminGetChannelUnauthorized with default headers values
func NewAdminGetChannelUnauthorized() *AdminGetChannelUnauthorized {
	return &AdminGetChannelUnauthorized{}
}

/*AdminGetChannelUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetChannelUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetChannelUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels][%d] adminGetChannelUnauthorized  %+v", 401, o.Payload)
}

func (o *AdminGetChannelUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetChannelUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetChannelNotFound creates a AdminGetChannelNotFound with default headers values
func NewAdminGetChannelNotFound() *AdminGetChannelNotFound {
	return &AdminGetChannelNotFound{}
}

/*AdminGetChannelNotFound handles this case with default header values.

  Not Found
*/
type AdminGetChannelNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetChannelNotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels][%d] adminGetChannelNotFound  %+v", 404, o.Payload)
}

func (o *AdminGetChannelNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetChannelNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetChannelInternalServerError creates a AdminGetChannelInternalServerError with default headers values
func NewAdminGetChannelInternalServerError() *AdminGetChannelInternalServerError {
	return &AdminGetChannelInternalServerError{}
}

/*AdminGetChannelInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetChannelInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetChannelInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels][%d] adminGetChannelInternalServerError  %+v", 500, o.Payload)
}

func (o *AdminGetChannelInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetChannelInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
