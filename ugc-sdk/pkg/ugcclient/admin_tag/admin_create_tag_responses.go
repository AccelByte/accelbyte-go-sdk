// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package admin_tag

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

// AdminCreateTagReader is a Reader for the AdminCreateTag structure.
type AdminCreateTagReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateTagReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateTagCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateTagBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCreateTagUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminCreateTagConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateTagInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v1/admin/namespaces/{namespace}/tags returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateTagCreated creates a AdminCreateTagCreated with default headers values
func NewAdminCreateTagCreated() *AdminCreateTagCreated {
	return &AdminCreateTagCreated{}
}

/*AdminCreateTagCreated handles this case with default header values.

  Created
*/
type AdminCreateTagCreated struct {
	Payload *ugcclientmodels.ModelsCreateTagResponse
}

func (o *AdminCreateTagCreated) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/tags][%d] adminCreateTagCreated  %+v", 201, o.Payload)
}

func (o *AdminCreateTagCreated) GetPayload() *ugcclientmodels.ModelsCreateTagResponse {
	return o.Payload
}

func (o *AdminCreateTagCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ModelsCreateTagResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateTagBadRequest creates a AdminCreateTagBadRequest with default headers values
func NewAdminCreateTagBadRequest() *AdminCreateTagBadRequest {
	return &AdminCreateTagBadRequest{}
}

/*AdminCreateTagBadRequest handles this case with default header values.

  Bad Request
*/
type AdminCreateTagBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCreateTagBadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/tags][%d] adminCreateTagBadRequest  %+v", 400, o.Payload)
}

func (o *AdminCreateTagBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateTagBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateTagUnauthorized creates a AdminCreateTagUnauthorized with default headers values
func NewAdminCreateTagUnauthorized() *AdminCreateTagUnauthorized {
	return &AdminCreateTagUnauthorized{}
}

/*AdminCreateTagUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminCreateTagUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCreateTagUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/tags][%d] adminCreateTagUnauthorized  %+v", 401, o.Payload)
}

func (o *AdminCreateTagUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateTagUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateTagConflict creates a AdminCreateTagConflict with default headers values
func NewAdminCreateTagConflict() *AdminCreateTagConflict {
	return &AdminCreateTagConflict{}
}

/*AdminCreateTagConflict handles this case with default header values.

  Conflict
*/
type AdminCreateTagConflict struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCreateTagConflict) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/tags][%d] adminCreateTagConflict  %+v", 409, o.Payload)
}

func (o *AdminCreateTagConflict) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateTagConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateTagInternalServerError creates a AdminCreateTagInternalServerError with default headers values
func NewAdminCreateTagInternalServerError() *AdminCreateTagInternalServerError {
	return &AdminCreateTagInternalServerError{}
}

/*AdminCreateTagInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminCreateTagInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCreateTagInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/tags][%d] adminCreateTagInternalServerError  %+v", 500, o.Payload)
}

func (o *AdminCreateTagInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateTagInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
