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

// PublicLinkPlatformAccountReader is a Reader for the PublicLinkPlatformAccount structure.
type PublicLinkPlatformAccountReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicLinkPlatformAccountReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicLinkPlatformAccountNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicLinkPlatformAccountBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicLinkPlatformAccountUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicLinkPlatformAccountForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicLinkPlatformAccountInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/link returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicLinkPlatformAccountNoContent creates a PublicLinkPlatformAccountNoContent with default headers values
func NewPublicLinkPlatformAccountNoContent() *PublicLinkPlatformAccountNoContent {
	return &PublicLinkPlatformAccountNoContent{}
}

/*PublicLinkPlatformAccountNoContent handles this case with default header values.

  No Content
*/
type PublicLinkPlatformAccountNoContent struct {
}

func (o *PublicLinkPlatformAccountNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/link][%d] publicLinkPlatformAccountNoContent ", 204)
}

func (o *PublicLinkPlatformAccountNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicLinkPlatformAccountBadRequest creates a PublicLinkPlatformAccountBadRequest with default headers values
func NewPublicLinkPlatformAccountBadRequest() *PublicLinkPlatformAccountBadRequest {
	return &PublicLinkPlatformAccountBadRequest{}
}

/*PublicLinkPlatformAccountBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicLinkPlatformAccountBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicLinkPlatformAccountBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/link][%d] publicLinkPlatformAccountBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicLinkPlatformAccountBadRequest) ToJSONString() string {
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

func (o *PublicLinkPlatformAccountBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicLinkPlatformAccountBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicLinkPlatformAccountUnauthorized creates a PublicLinkPlatformAccountUnauthorized with default headers values
func NewPublicLinkPlatformAccountUnauthorized() *PublicLinkPlatformAccountUnauthorized {
	return &PublicLinkPlatformAccountUnauthorized{}
}

/*PublicLinkPlatformAccountUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicLinkPlatformAccountUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicLinkPlatformAccountUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/link][%d] publicLinkPlatformAccountUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicLinkPlatformAccountUnauthorized) ToJSONString() string {
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

func (o *PublicLinkPlatformAccountUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicLinkPlatformAccountUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicLinkPlatformAccountForbidden creates a PublicLinkPlatformAccountForbidden with default headers values
func NewPublicLinkPlatformAccountForbidden() *PublicLinkPlatformAccountForbidden {
	return &PublicLinkPlatformAccountForbidden{}
}

/*PublicLinkPlatformAccountForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicLinkPlatformAccountForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicLinkPlatformAccountForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/link][%d] publicLinkPlatformAccountForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicLinkPlatformAccountForbidden) ToJSONString() string {
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

func (o *PublicLinkPlatformAccountForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicLinkPlatformAccountForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicLinkPlatformAccountInternalServerError creates a PublicLinkPlatformAccountInternalServerError with default headers values
func NewPublicLinkPlatformAccountInternalServerError() *PublicLinkPlatformAccountInternalServerError {
	return &PublicLinkPlatformAccountInternalServerError{}
}

/*PublicLinkPlatformAccountInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicLinkPlatformAccountInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicLinkPlatformAccountInternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/link][%d] publicLinkPlatformAccountInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicLinkPlatformAccountInternalServerError) ToJSONString() string {
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

func (o *PublicLinkPlatformAccountInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicLinkPlatformAccountInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
