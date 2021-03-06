// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package users

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// AdminGetListJusticePlatformAccountsReader is a Reader for the AdminGetListJusticePlatformAccounts structure.
type AdminGetListJusticePlatformAccountsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetListJusticePlatformAccountsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetListJusticePlatformAccountsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetListJusticePlatformAccountsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetListJusticePlatformAccountsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetListJusticePlatformAccountsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetListJusticePlatformAccountsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetListJusticePlatformAccountsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetListJusticePlatformAccountsOK creates a AdminGetListJusticePlatformAccountsOK with default headers values
func NewAdminGetListJusticePlatformAccountsOK() *AdminGetListJusticePlatformAccountsOK {
	return &AdminGetListJusticePlatformAccountsOK{}
}

/*AdminGetListJusticePlatformAccountsOK handles this case with default header values.

  OK
*/
type AdminGetListJusticePlatformAccountsOK struct {
	Payload []*iamclientmodels.ModelGetUserMapping
}

func (o *AdminGetListJusticePlatformAccountsOK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice][%d] adminGetListJusticePlatformAccountsOK  %+v", 200, o.Payload)
}

func (o *AdminGetListJusticePlatformAccountsOK) GetPayload() []*iamclientmodels.ModelGetUserMapping {
	return o.Payload
}

func (o *AdminGetListJusticePlatformAccountsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListJusticePlatformAccountsBadRequest creates a AdminGetListJusticePlatformAccountsBadRequest with default headers values
func NewAdminGetListJusticePlatformAccountsBadRequest() *AdminGetListJusticePlatformAccountsBadRequest {
	return &AdminGetListJusticePlatformAccountsBadRequest{}
}

/*AdminGetListJusticePlatformAccountsBadRequest handles this case with default header values.

  AdminGetListJusticePlatformAccountsBadRequest admin get list justice platform accounts bad request
*/
type AdminGetListJusticePlatformAccountsBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetListJusticePlatformAccountsBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice][%d] adminGetListJusticePlatformAccountsBadRequest  %+v", 400, o.Payload)
}

func (o *AdminGetListJusticePlatformAccountsBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetListJusticePlatformAccountsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListJusticePlatformAccountsUnauthorized creates a AdminGetListJusticePlatformAccountsUnauthorized with default headers values
func NewAdminGetListJusticePlatformAccountsUnauthorized() *AdminGetListJusticePlatformAccountsUnauthorized {
	return &AdminGetListJusticePlatformAccountsUnauthorized{}
}

/*AdminGetListJusticePlatformAccountsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetListJusticePlatformAccountsUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetListJusticePlatformAccountsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice][%d] adminGetListJusticePlatformAccountsUnauthorized  %+v", 401, o.Payload)
}

func (o *AdminGetListJusticePlatformAccountsUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetListJusticePlatformAccountsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListJusticePlatformAccountsForbidden creates a AdminGetListJusticePlatformAccountsForbidden with default headers values
func NewAdminGetListJusticePlatformAccountsForbidden() *AdminGetListJusticePlatformAccountsForbidden {
	return &AdminGetListJusticePlatformAccountsForbidden{}
}

/*AdminGetListJusticePlatformAccountsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20003</td><td>forbidden access</td></tr></table>
*/
type AdminGetListJusticePlatformAccountsForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetListJusticePlatformAccountsForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice][%d] adminGetListJusticePlatformAccountsForbidden  %+v", 403, o.Payload)
}

func (o *AdminGetListJusticePlatformAccountsForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetListJusticePlatformAccountsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListJusticePlatformAccountsNotFound creates a AdminGetListJusticePlatformAccountsNotFound with default headers values
func NewAdminGetListJusticePlatformAccountsNotFound() *AdminGetListJusticePlatformAccountsNotFound {
	return &AdminGetListJusticePlatformAccountsNotFound{}
}

/*AdminGetListJusticePlatformAccountsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminGetListJusticePlatformAccountsNotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetListJusticePlatformAccountsNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice][%d] adminGetListJusticePlatformAccountsNotFound  %+v", 404, o.Payload)
}

func (o *AdminGetListJusticePlatformAccountsNotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetListJusticePlatformAccountsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListJusticePlatformAccountsInternalServerError creates a AdminGetListJusticePlatformAccountsInternalServerError with default headers values
func NewAdminGetListJusticePlatformAccountsInternalServerError() *AdminGetListJusticePlatformAccountsInternalServerError {
	return &AdminGetListJusticePlatformAccountsInternalServerError{}
}

/*AdminGetListJusticePlatformAccountsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetListJusticePlatformAccountsInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetListJusticePlatformAccountsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice][%d] adminGetListJusticePlatformAccountsInternalServerError  %+v", 500, o.Payload)
}

func (o *AdminGetListJusticePlatformAccountsInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetListJusticePlatformAccountsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
