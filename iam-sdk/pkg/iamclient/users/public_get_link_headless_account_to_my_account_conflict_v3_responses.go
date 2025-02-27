// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// PublicGetLinkHeadlessAccountToMyAccountConflictV3Reader is a Reader for the PublicGetLinkHeadlessAccountToMyAccountConflictV3 structure.
type PublicGetLinkHeadlessAccountToMyAccountConflictV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetLinkHeadlessAccountToMyAccountConflictV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/users/me/headless/link/conflict returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetLinkHeadlessAccountToMyAccountConflictV3OK creates a PublicGetLinkHeadlessAccountToMyAccountConflictV3OK with default headers values
func NewPublicGetLinkHeadlessAccountToMyAccountConflictV3OK() *PublicGetLinkHeadlessAccountToMyAccountConflictV3OK {
	return &PublicGetLinkHeadlessAccountToMyAccountConflictV3OK{}
}

/*PublicGetLinkHeadlessAccountToMyAccountConflictV3OK handles this case with default header values.

  OK
*/
type PublicGetLinkHeadlessAccountToMyAccountConflictV3OK struct {
	Payload *iamclientmodels.ModelGetLinkHeadlessAccountConflictResponse
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/users/me/headless/link/conflict][%d] publicGetLinkHeadlessAccountToMyAccountConflictV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3OK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3OK) GetPayload() *iamclientmodels.ModelGetLinkHeadlessAccountConflictResponse {
	return o.Payload
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelGetLinkHeadlessAccountConflictResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest creates a PublicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest with default headers values
func NewPublicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest() *PublicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest {
	return &PublicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest{}
}

/*PublicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/users/me/headless/link/conflict][%d] publicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized creates a PublicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized with default headers values
func NewPublicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized() *PublicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized {
	return &PublicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized{}
}

/*PublicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/users/me/headless/link/conflict][%d] publicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden creates a PublicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden with default headers values
func NewPublicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden() *PublicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden {
	return &PublicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden{}
}

/*PublicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/users/me/headless/link/conflict][%d] publicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError creates a PublicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError with default headers values
func NewPublicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError() *PublicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError {
	return &PublicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError{}
}

/*PublicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/users/me/headless/link/conflict][%d] publicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
