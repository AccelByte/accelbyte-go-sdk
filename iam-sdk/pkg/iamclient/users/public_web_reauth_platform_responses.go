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

// PublicWebReauthPlatformReader is a Reader for the PublicWebReauthPlatform structure.
type PublicWebReauthPlatformReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicWebReauthPlatformReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicWebReauthPlatformOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicWebReauthPlatformBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicWebReauthPlatformUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicWebReauthPlatformNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/reauth returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicWebReauthPlatformOK creates a PublicWebReauthPlatformOK with default headers values
func NewPublicWebReauthPlatformOK() *PublicWebReauthPlatformOK {
	return &PublicWebReauthPlatformOK{}
}

/*PublicWebReauthPlatformOK handles this case with default header values.

  OK
*/
type PublicWebReauthPlatformOK struct {
	Payload *iamclientmodels.ModelWebLinkingResponse
}

func (o *PublicWebReauthPlatformOK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/reauth][%d] publicWebReauthPlatformOK  %+v", 200, o.ToJSONString())
}

func (o *PublicWebReauthPlatformOK) ToJSONString() string {
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

func (o *PublicWebReauthPlatformOK) GetPayload() *iamclientmodels.ModelWebLinkingResponse {
	return o.Payload
}

func (o *PublicWebReauthPlatformOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelWebLinkingResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicWebReauthPlatformBadRequest creates a PublicWebReauthPlatformBadRequest with default headers values
func NewPublicWebReauthPlatformBadRequest() *PublicWebReauthPlatformBadRequest {
	return &PublicWebReauthPlatformBadRequest{}
}

/*PublicWebReauthPlatformBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicWebReauthPlatformBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicWebReauthPlatformBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/reauth][%d] publicWebReauthPlatformBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicWebReauthPlatformBadRequest) ToJSONString() string {
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

func (o *PublicWebReauthPlatformBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicWebReauthPlatformBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicWebReauthPlatformUnauthorized creates a PublicWebReauthPlatformUnauthorized with default headers values
func NewPublicWebReauthPlatformUnauthorized() *PublicWebReauthPlatformUnauthorized {
	return &PublicWebReauthPlatformUnauthorized{}
}

/*PublicWebReauthPlatformUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicWebReauthPlatformUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicWebReauthPlatformUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/reauth][%d] publicWebReauthPlatformUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicWebReauthPlatformUnauthorized) ToJSONString() string {
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

func (o *PublicWebReauthPlatformUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicWebReauthPlatformUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicWebReauthPlatformNotFound creates a PublicWebReauthPlatformNotFound with default headers values
func NewPublicWebReauthPlatformNotFound() *PublicWebReauthPlatformNotFound {
	return &PublicWebReauthPlatformNotFound{}
}

/*PublicWebReauthPlatformNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10365</td><td>client not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicWebReauthPlatformNotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicWebReauthPlatformNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/reauth][%d] publicWebReauthPlatformNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicWebReauthPlatformNotFound) ToJSONString() string {
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

func (o *PublicWebReauthPlatformNotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicWebReauthPlatformNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
