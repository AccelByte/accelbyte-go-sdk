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

// PublicForceLinkPlatformWithProgressionReader is a Reader for the PublicForceLinkPlatformWithProgression structure.
type PublicForceLinkPlatformWithProgressionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicForceLinkPlatformWithProgressionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicForceLinkPlatformWithProgressionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicForceLinkPlatformWithProgressionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicForceLinkPlatformWithProgressionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicForceLinkPlatformWithProgressionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicForceLinkPlatformWithProgressionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/linkWithProgression returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicForceLinkPlatformWithProgressionNoContent creates a PublicForceLinkPlatformWithProgressionNoContent with default headers values
func NewPublicForceLinkPlatformWithProgressionNoContent() *PublicForceLinkPlatformWithProgressionNoContent {
	return &PublicForceLinkPlatformWithProgressionNoContent{}
}

/*PublicForceLinkPlatformWithProgressionNoContent handles this case with default header values.

  No Content
*/
type PublicForceLinkPlatformWithProgressionNoContent struct {
}

func (o *PublicForceLinkPlatformWithProgressionNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/linkWithProgression][%d] publicForceLinkPlatformWithProgressionNoContent ", 204)
}

func (o *PublicForceLinkPlatformWithProgressionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicForceLinkPlatformWithProgressionBadRequest creates a PublicForceLinkPlatformWithProgressionBadRequest with default headers values
func NewPublicForceLinkPlatformWithProgressionBadRequest() *PublicForceLinkPlatformWithProgressionBadRequest {
	return &PublicForceLinkPlatformWithProgressionBadRequest{}
}

/*PublicForceLinkPlatformWithProgressionBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicForceLinkPlatformWithProgressionBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicForceLinkPlatformWithProgressionBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/linkWithProgression][%d] publicForceLinkPlatformWithProgressionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicForceLinkPlatformWithProgressionBadRequest) ToJSONString() string {
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

func (o *PublicForceLinkPlatformWithProgressionBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicForceLinkPlatformWithProgressionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicForceLinkPlatformWithProgressionUnauthorized creates a PublicForceLinkPlatformWithProgressionUnauthorized with default headers values
func NewPublicForceLinkPlatformWithProgressionUnauthorized() *PublicForceLinkPlatformWithProgressionUnauthorized {
	return &PublicForceLinkPlatformWithProgressionUnauthorized{}
}

/*PublicForceLinkPlatformWithProgressionUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicForceLinkPlatformWithProgressionUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicForceLinkPlatformWithProgressionUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/linkWithProgression][%d] publicForceLinkPlatformWithProgressionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicForceLinkPlatformWithProgressionUnauthorized) ToJSONString() string {
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

func (o *PublicForceLinkPlatformWithProgressionUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicForceLinkPlatformWithProgressionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicForceLinkPlatformWithProgressionForbidden creates a PublicForceLinkPlatformWithProgressionForbidden with default headers values
func NewPublicForceLinkPlatformWithProgressionForbidden() *PublicForceLinkPlatformWithProgressionForbidden {
	return &PublicForceLinkPlatformWithProgressionForbidden{}
}

/*PublicForceLinkPlatformWithProgressionForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicForceLinkPlatformWithProgressionForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicForceLinkPlatformWithProgressionForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/linkWithProgression][%d] publicForceLinkPlatformWithProgressionForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicForceLinkPlatformWithProgressionForbidden) ToJSONString() string {
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

func (o *PublicForceLinkPlatformWithProgressionForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicForceLinkPlatformWithProgressionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicForceLinkPlatformWithProgressionInternalServerError creates a PublicForceLinkPlatformWithProgressionInternalServerError with default headers values
func NewPublicForceLinkPlatformWithProgressionInternalServerError() *PublicForceLinkPlatformWithProgressionInternalServerError {
	return &PublicForceLinkPlatformWithProgressionInternalServerError{}
}

/*PublicForceLinkPlatformWithProgressionInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicForceLinkPlatformWithProgressionInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicForceLinkPlatformWithProgressionInternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/linkWithProgression][%d] publicForceLinkPlatformWithProgressionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicForceLinkPlatformWithProgressionInternalServerError) ToJSONString() string {
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

func (o *PublicForceLinkPlatformWithProgressionInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicForceLinkPlatformWithProgressionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
