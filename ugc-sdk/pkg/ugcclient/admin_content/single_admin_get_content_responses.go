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

// SingleAdminGetContentReader is a Reader for the SingleAdminGetContent structure.
type SingleAdminGetContentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SingleAdminGetContentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSingleAdminGetContentOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSingleAdminGetContentUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSingleAdminGetContentNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSingleAdminGetContentInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/admin/namespaces/{namespace}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSingleAdminGetContentOK creates a SingleAdminGetContentOK with default headers values
func NewSingleAdminGetContentOK() *SingleAdminGetContentOK {
	return &SingleAdminGetContentOK{}
}

/*SingleAdminGetContentOK handles this case with default header values.

  OK
*/
type SingleAdminGetContentOK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloadResponse
}

func (o *SingleAdminGetContentOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents][%d] singleAdminGetContentOK  %+v", 200, o.Payload)
}

func (o *SingleAdminGetContentOK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloadResponse {
	return o.Payload
}

func (o *SingleAdminGetContentOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ModelsPaginatedContentDownloadResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminGetContentUnauthorized creates a SingleAdminGetContentUnauthorized with default headers values
func NewSingleAdminGetContentUnauthorized() *SingleAdminGetContentUnauthorized {
	return &SingleAdminGetContentUnauthorized{}
}

/*SingleAdminGetContentUnauthorized handles this case with default header values.

  Unauthorized
*/
type SingleAdminGetContentUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminGetContentUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents][%d] singleAdminGetContentUnauthorized  %+v", 401, o.Payload)
}

func (o *SingleAdminGetContentUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminGetContentUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminGetContentNotFound creates a SingleAdminGetContentNotFound with default headers values
func NewSingleAdminGetContentNotFound() *SingleAdminGetContentNotFound {
	return &SingleAdminGetContentNotFound{}
}

/*SingleAdminGetContentNotFound handles this case with default header values.

  Not Found
*/
type SingleAdminGetContentNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminGetContentNotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents][%d] singleAdminGetContentNotFound  %+v", 404, o.Payload)
}

func (o *SingleAdminGetContentNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminGetContentNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminGetContentInternalServerError creates a SingleAdminGetContentInternalServerError with default headers values
func NewSingleAdminGetContentInternalServerError() *SingleAdminGetContentInternalServerError {
	return &SingleAdminGetContentInternalServerError{}
}

/*SingleAdminGetContentInternalServerError handles this case with default header values.

  Internal Server Error
*/
type SingleAdminGetContentInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminGetContentInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents][%d] singleAdminGetContentInternalServerError  %+v", 500, o.Payload)
}

func (o *SingleAdminGetContentInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminGetContentInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
