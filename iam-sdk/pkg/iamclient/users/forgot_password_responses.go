// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package users

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// ForgotPasswordReader is a Reader for the ForgotPassword structure.
type ForgotPasswordReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ForgotPasswordReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewForgotPasswordNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewForgotPasswordBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewForgotPasswordUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewForgotPasswordForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewForgotPasswordNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/namespaces/{namespace}/users/forgotPassword returns an error %d: %s", response.Code(), string(data))
	}
}

// NewForgotPasswordNoContent creates a ForgotPasswordNoContent with default headers values
func NewForgotPasswordNoContent() *ForgotPasswordNoContent {
	return &ForgotPasswordNoContent{}
}

/*ForgotPasswordNoContent handles this case with default header values.

  Operation succeeded
*/
type ForgotPasswordNoContent struct {
}

func (o *ForgotPasswordNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/forgotPassword][%d] forgotPasswordNoContent ", 204)
}

func (o *ForgotPasswordNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewForgotPasswordBadRequest creates a ForgotPasswordBadRequest with default headers values
func NewForgotPasswordBadRequest() *ForgotPasswordBadRequest {
	return &ForgotPasswordBadRequest{}
}

/*ForgotPasswordBadRequest handles this case with default header values.

  Invalid request
*/
type ForgotPasswordBadRequest struct {
}

func (o *ForgotPasswordBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/forgotPassword][%d] forgotPasswordBadRequest ", 400)
}

func (o *ForgotPasswordBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewForgotPasswordUnauthorized creates a ForgotPasswordUnauthorized with default headers values
func NewForgotPasswordUnauthorized() *ForgotPasswordUnauthorized {
	return &ForgotPasswordUnauthorized{}
}

/*ForgotPasswordUnauthorized handles this case with default header values.

  Unauthorized access
*/
type ForgotPasswordUnauthorized struct {
}

func (o *ForgotPasswordUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/forgotPassword][%d] forgotPasswordUnauthorized ", 401)
}

func (o *ForgotPasswordUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewForgotPasswordForbidden creates a ForgotPasswordForbidden with default headers values
func NewForgotPasswordForbidden() *ForgotPasswordForbidden {
	return &ForgotPasswordForbidden{}
}

/*ForgotPasswordForbidden handles this case with default header values.

  Forbidden
*/
type ForgotPasswordForbidden struct {
}

func (o *ForgotPasswordForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/forgotPassword][%d] forgotPasswordForbidden ", 403)
}

func (o *ForgotPasswordForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewForgotPasswordNotFound creates a ForgotPasswordNotFound with default headers values
func NewForgotPasswordNotFound() *ForgotPasswordNotFound {
	return &ForgotPasswordNotFound{}
}

/*ForgotPasswordNotFound handles this case with default header values.

  Data not found
*/
type ForgotPasswordNotFound struct {
}

func (o *ForgotPasswordNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/forgotPassword][%d] forgotPasswordNotFound ", 404)
}

func (o *ForgotPasswordNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}
