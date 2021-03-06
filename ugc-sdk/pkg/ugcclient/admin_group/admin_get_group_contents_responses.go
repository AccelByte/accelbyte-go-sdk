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

// AdminGetGroupContentsReader is a Reader for the AdminGetGroupContents structure.
type AdminGetGroupContentsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetGroupContentsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetGroupContentsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetGroupContentsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetGroupContentsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetGroupContentsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetGroupContentsOK creates a AdminGetGroupContentsOK with default headers values
func NewAdminGetGroupContentsOK() *AdminGetGroupContentsOK {
	return &AdminGetGroupContentsOK{}
}

/*AdminGetGroupContentsOK handles this case with default header values.

  OK
*/
type AdminGetGroupContentsOK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloadResponse
}

func (o *AdminGetGroupContentsOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents][%d] adminGetGroupContentsOK  %+v", 200, o.Payload)
}

func (o *AdminGetGroupContentsOK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloadResponse {
	return o.Payload
}

func (o *AdminGetGroupContentsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ModelsPaginatedContentDownloadResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetGroupContentsUnauthorized creates a AdminGetGroupContentsUnauthorized with default headers values
func NewAdminGetGroupContentsUnauthorized() *AdminGetGroupContentsUnauthorized {
	return &AdminGetGroupContentsUnauthorized{}
}

/*AdminGetGroupContentsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetGroupContentsUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetGroupContentsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents][%d] adminGetGroupContentsUnauthorized  %+v", 401, o.Payload)
}

func (o *AdminGetGroupContentsUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetGroupContentsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetGroupContentsNotFound creates a AdminGetGroupContentsNotFound with default headers values
func NewAdminGetGroupContentsNotFound() *AdminGetGroupContentsNotFound {
	return &AdminGetGroupContentsNotFound{}
}

/*AdminGetGroupContentsNotFound handles this case with default header values.

  Not Found
*/
type AdminGetGroupContentsNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetGroupContentsNotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents][%d] adminGetGroupContentsNotFound  %+v", 404, o.Payload)
}

func (o *AdminGetGroupContentsNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetGroupContentsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetGroupContentsInternalServerError creates a AdminGetGroupContentsInternalServerError with default headers values
func NewAdminGetGroupContentsInternalServerError() *AdminGetGroupContentsInternalServerError {
	return &AdminGetGroupContentsInternalServerError{}
}

/*AdminGetGroupContentsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetGroupContentsInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetGroupContentsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents][%d] adminGetGroupContentsInternalServerError  %+v", 500, o.Payload)
}

func (o *AdminGetGroupContentsInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetGroupContentsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
