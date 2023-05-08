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

// PublicResetPasswordV2Reader is a Reader for the PublicResetPasswordV2 structure.
type PublicResetPasswordV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicResetPasswordV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicResetPasswordV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicResetPasswordV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicResetPasswordV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicResetPasswordV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicResetPasswordV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v2/public/namespaces/{namespace}/users/resetPassword returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicResetPasswordV2NoContent creates a PublicResetPasswordV2NoContent with default headers values
func NewPublicResetPasswordV2NoContent() *PublicResetPasswordV2NoContent {
	return &PublicResetPasswordV2NoContent{}
}

/*PublicResetPasswordV2NoContent handles this case with default header values.

  Operation succeeded
*/
type PublicResetPasswordV2NoContent struct {
}

func (o *PublicResetPasswordV2NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users/resetPassword][%d] publicResetPasswordV2NoContent ", 204)
}

func (o *PublicResetPasswordV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicResetPasswordV2BadRequest creates a PublicResetPasswordV2BadRequest with default headers values
func NewPublicResetPasswordV2BadRequest() *PublicResetPasswordV2BadRequest {
	return &PublicResetPasswordV2BadRequest{}
}

/*PublicResetPasswordV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>10142</td><td>new password cannot be same with original</td></tr></table>
*/
type PublicResetPasswordV2BadRequest struct {
}

func (o *PublicResetPasswordV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users/resetPassword][%d] publicResetPasswordV2BadRequest ", 400)
}

func (o *PublicResetPasswordV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicResetPasswordV2Forbidden creates a PublicResetPasswordV2Forbidden with default headers values
func NewPublicResetPasswordV2Forbidden() *PublicResetPasswordV2Forbidden {
	return &PublicResetPasswordV2Forbidden{}
}

/*PublicResetPasswordV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10137</td><td>code is expired</td></tr><tr><td>10136</td><td>code is either been used or not valid anymore</td></tr><tr><td>10138</td><td>code not match</td></tr><tr><td>10152</td><td>verification code not found</td></tr></table>
*/
type PublicResetPasswordV2Forbidden struct {
}

func (o *PublicResetPasswordV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users/resetPassword][%d] publicResetPasswordV2Forbidden ", 403)
}

func (o *PublicResetPasswordV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicResetPasswordV2NotFound creates a PublicResetPasswordV2NotFound with default headers values
func NewPublicResetPasswordV2NotFound() *PublicResetPasswordV2NotFound {
	return &PublicResetPasswordV2NotFound{}
}

/*PublicResetPasswordV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicResetPasswordV2NotFound struct {
}

func (o *PublicResetPasswordV2NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users/resetPassword][%d] publicResetPasswordV2NotFound ", 404)
}

func (o *PublicResetPasswordV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicResetPasswordV2InternalServerError creates a PublicResetPasswordV2InternalServerError with default headers values
func NewPublicResetPasswordV2InternalServerError() *PublicResetPasswordV2InternalServerError {
	return &PublicResetPasswordV2InternalServerError{}
}

/*PublicResetPasswordV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicResetPasswordV2InternalServerError struct {
}

func (o *PublicResetPasswordV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users/resetPassword][%d] publicResetPasswordV2InternalServerError ", 500)
}

func (o *PublicResetPasswordV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
