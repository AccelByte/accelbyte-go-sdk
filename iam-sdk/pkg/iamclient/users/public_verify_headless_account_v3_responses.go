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

// PublicVerifyHeadlessAccountV3Reader is a Reader for the PublicVerifyHeadlessAccountV3 structure.
type PublicVerifyHeadlessAccountV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicVerifyHeadlessAccountV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicVerifyHeadlessAccountV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicVerifyHeadlessAccountV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicVerifyHeadlessAccountV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicVerifyHeadlessAccountV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicVerifyHeadlessAccountV3Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicVerifyHeadlessAccountV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/namespaces/{namespace}/users/me/headless/verify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicVerifyHeadlessAccountV3OK creates a PublicVerifyHeadlessAccountV3OK with default headers values
func NewPublicVerifyHeadlessAccountV3OK() *PublicVerifyHeadlessAccountV3OK {
	return &PublicVerifyHeadlessAccountV3OK{}
}

/*PublicVerifyHeadlessAccountV3OK handles this case with default header values.

  OK
*/
type PublicVerifyHeadlessAccountV3OK struct {
	Payload *iamclientmodels.ModelUserResponseV3
}

func (o *PublicVerifyHeadlessAccountV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/headless/verify][%d] publicVerifyHeadlessAccountV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicVerifyHeadlessAccountV3OK) ToJSONString() string {
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

func (o *PublicVerifyHeadlessAccountV3OK) GetPayload() *iamclientmodels.ModelUserResponseV3 {
	return o.Payload
}

func (o *PublicVerifyHeadlessAccountV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicVerifyHeadlessAccountV3BadRequest creates a PublicVerifyHeadlessAccountV3BadRequest with default headers values
func NewPublicVerifyHeadlessAccountV3BadRequest() *PublicVerifyHeadlessAccountV3BadRequest {
	return &PublicVerifyHeadlessAccountV3BadRequest{}
}

/*PublicVerifyHeadlessAccountV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicVerifyHeadlessAccountV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicVerifyHeadlessAccountV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/headless/verify][%d] publicVerifyHeadlessAccountV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicVerifyHeadlessAccountV3BadRequest) ToJSONString() string {
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

func (o *PublicVerifyHeadlessAccountV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicVerifyHeadlessAccountV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicVerifyHeadlessAccountV3Unauthorized creates a PublicVerifyHeadlessAccountV3Unauthorized with default headers values
func NewPublicVerifyHeadlessAccountV3Unauthorized() *PublicVerifyHeadlessAccountV3Unauthorized {
	return &PublicVerifyHeadlessAccountV3Unauthorized{}
}

/*PublicVerifyHeadlessAccountV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicVerifyHeadlessAccountV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicVerifyHeadlessAccountV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/headless/verify][%d] publicVerifyHeadlessAccountV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicVerifyHeadlessAccountV3Unauthorized) ToJSONString() string {
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

func (o *PublicVerifyHeadlessAccountV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicVerifyHeadlessAccountV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicVerifyHeadlessAccountV3NotFound creates a PublicVerifyHeadlessAccountV3NotFound with default headers values
func NewPublicVerifyHeadlessAccountV3NotFound() *PublicVerifyHeadlessAccountV3NotFound {
	return &PublicVerifyHeadlessAccountV3NotFound{}
}

/*PublicVerifyHeadlessAccountV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr></table>
*/
type PublicVerifyHeadlessAccountV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicVerifyHeadlessAccountV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/headless/verify][%d] publicVerifyHeadlessAccountV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicVerifyHeadlessAccountV3NotFound) ToJSONString() string {
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

func (o *PublicVerifyHeadlessAccountV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicVerifyHeadlessAccountV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicVerifyHeadlessAccountV3Conflict creates a PublicVerifyHeadlessAccountV3Conflict with default headers values
func NewPublicVerifyHeadlessAccountV3Conflict() *PublicVerifyHeadlessAccountV3Conflict {
	return &PublicVerifyHeadlessAccountV3Conflict{}
}

/*PublicVerifyHeadlessAccountV3Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10153</td><td>user exist</td></tr><tr><td>10170</td><td>account is already a full account</td></tr></table>
*/
type PublicVerifyHeadlessAccountV3Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicVerifyHeadlessAccountV3Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/headless/verify][%d] publicVerifyHeadlessAccountV3Conflict  %+v", 409, o.ToJSONString())
}

func (o *PublicVerifyHeadlessAccountV3Conflict) ToJSONString() string {
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

func (o *PublicVerifyHeadlessAccountV3Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicVerifyHeadlessAccountV3Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicVerifyHeadlessAccountV3InternalServerError creates a PublicVerifyHeadlessAccountV3InternalServerError with default headers values
func NewPublicVerifyHeadlessAccountV3InternalServerError() *PublicVerifyHeadlessAccountV3InternalServerError {
	return &PublicVerifyHeadlessAccountV3InternalServerError{}
}

/*PublicVerifyHeadlessAccountV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicVerifyHeadlessAccountV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicVerifyHeadlessAccountV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/headless/verify][%d] publicVerifyHeadlessAccountV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicVerifyHeadlessAccountV3InternalServerError) ToJSONString() string {
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

func (o *PublicVerifyHeadlessAccountV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicVerifyHeadlessAccountV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
