// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// PublicForgotPasswordV2Reader is a Reader for the PublicForgotPasswordV2 structure.
type PublicForgotPasswordV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicForgotPasswordV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicForgotPasswordV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicForgotPasswordV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicForgotPasswordV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewPublicForgotPasswordV2TooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicForgotPasswordV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v2/public/namespaces/{namespace}/users/forgotPassword returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicForgotPasswordV2NoContent creates a PublicForgotPasswordV2NoContent with default headers values
func NewPublicForgotPasswordV2NoContent() *PublicForgotPasswordV2NoContent {
	return &PublicForgotPasswordV2NoContent{}
}

/*PublicForgotPasswordV2NoContent handles this case with default header values.

  Operation succeeded
*/
type PublicForgotPasswordV2NoContent struct {
}

func (o *PublicForgotPasswordV2NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users/forgotPassword][%d] publicForgotPasswordV2NoContent ", 204)
}

func (o *PublicForgotPasswordV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicForgotPasswordV2BadRequest creates a PublicForgotPasswordV2BadRequest with default headers values
func NewPublicForgotPasswordV2BadRequest() *PublicForgotPasswordV2BadRequest {
	return &PublicForgotPasswordV2BadRequest{}
}

/*PublicForgotPasswordV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type PublicForgotPasswordV2BadRequest struct {
}

func (o *PublicForgotPasswordV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users/forgotPassword][%d] publicForgotPasswordV2BadRequest ", 400)
}

func (o *PublicForgotPasswordV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicForgotPasswordV2NotFound creates a PublicForgotPasswordV2NotFound with default headers values
func NewPublicForgotPasswordV2NotFound() *PublicForgotPasswordV2NotFound {
	return &PublicForgotPasswordV2NotFound{}
}

/*PublicForgotPasswordV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicForgotPasswordV2NotFound struct {
}

func (o *PublicForgotPasswordV2NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users/forgotPassword][%d] publicForgotPasswordV2NotFound ", 404)
}

func (o *PublicForgotPasswordV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicForgotPasswordV2TooManyRequests creates a PublicForgotPasswordV2TooManyRequests with default headers values
func NewPublicForgotPasswordV2TooManyRequests() *PublicForgotPasswordV2TooManyRequests {
	return &PublicForgotPasswordV2TooManyRequests{}
}

/*PublicForgotPasswordV2TooManyRequests handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20007</td><td>too many requests</td></tr></table>
*/
type PublicForgotPasswordV2TooManyRequests struct {
}

func (o *PublicForgotPasswordV2TooManyRequests) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users/forgotPassword][%d] publicForgotPasswordV2TooManyRequests ", 429)
}

func (o *PublicForgotPasswordV2TooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicForgotPasswordV2InternalServerError creates a PublicForgotPasswordV2InternalServerError with default headers values
func NewPublicForgotPasswordV2InternalServerError() *PublicForgotPasswordV2InternalServerError {
	return &PublicForgotPasswordV2InternalServerError{}
}

/*PublicForgotPasswordV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicForgotPasswordV2InternalServerError struct {
}

func (o *PublicForgotPasswordV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users/forgotPassword][%d] publicForgotPasswordV2InternalServerError ", 500)
}

func (o *PublicForgotPasswordV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
