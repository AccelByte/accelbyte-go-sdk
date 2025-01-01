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

// PublicGetMyRedirectionAfterLinkV3Reader is a Reader for the PublicGetMyRedirectionAfterLinkV3 structure.
type PublicGetMyRedirectionAfterLinkV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetMyRedirectionAfterLinkV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetMyRedirectionAfterLinkV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetMyRedirectionAfterLinkV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetMyRedirectionAfterLinkV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetMyRedirectionAfterLinkV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/users/me/link/redirection returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetMyRedirectionAfterLinkV3OK creates a PublicGetMyRedirectionAfterLinkV3OK with default headers values
func NewPublicGetMyRedirectionAfterLinkV3OK() *PublicGetMyRedirectionAfterLinkV3OK {
	return &PublicGetMyRedirectionAfterLinkV3OK{}
}

/*PublicGetMyRedirectionAfterLinkV3OK handles this case with default header values.

  OK
*/
type PublicGetMyRedirectionAfterLinkV3OK struct {
	Payload *iamclientmodels.ModelOneTimeCodeLinkRedirectionResponse
}

func (o *PublicGetMyRedirectionAfterLinkV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/users/me/link/redirection][%d] publicGetMyRedirectionAfterLinkV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetMyRedirectionAfterLinkV3OK) ToJSONString() string {
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

func (o *PublicGetMyRedirectionAfterLinkV3OK) GetPayload() *iamclientmodels.ModelOneTimeCodeLinkRedirectionResponse {
	return o.Payload
}

func (o *PublicGetMyRedirectionAfterLinkV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelOneTimeCodeLinkRedirectionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetMyRedirectionAfterLinkV3Unauthorized creates a PublicGetMyRedirectionAfterLinkV3Unauthorized with default headers values
func NewPublicGetMyRedirectionAfterLinkV3Unauthorized() *PublicGetMyRedirectionAfterLinkV3Unauthorized {
	return &PublicGetMyRedirectionAfterLinkV3Unauthorized{}
}

/*PublicGetMyRedirectionAfterLinkV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicGetMyRedirectionAfterLinkV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyRedirectionAfterLinkV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/users/me/link/redirection][%d] publicGetMyRedirectionAfterLinkV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetMyRedirectionAfterLinkV3Unauthorized) ToJSONString() string {
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

func (o *PublicGetMyRedirectionAfterLinkV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyRedirectionAfterLinkV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetMyRedirectionAfterLinkV3NotFound creates a PublicGetMyRedirectionAfterLinkV3NotFound with default headers values
func NewPublicGetMyRedirectionAfterLinkV3NotFound() *PublicGetMyRedirectionAfterLinkV3NotFound {
	return &PublicGetMyRedirectionAfterLinkV3NotFound{}
}

/*PublicGetMyRedirectionAfterLinkV3NotFound handles this case with default header values.

  Not Found
*/
type PublicGetMyRedirectionAfterLinkV3NotFound struct {
}

func (o *PublicGetMyRedirectionAfterLinkV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/users/me/link/redirection][%d] publicGetMyRedirectionAfterLinkV3NotFound ", 404)
}

func (o *PublicGetMyRedirectionAfterLinkV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicGetMyRedirectionAfterLinkV3InternalServerError creates a PublicGetMyRedirectionAfterLinkV3InternalServerError with default headers values
func NewPublicGetMyRedirectionAfterLinkV3InternalServerError() *PublicGetMyRedirectionAfterLinkV3InternalServerError {
	return &PublicGetMyRedirectionAfterLinkV3InternalServerError{}
}

/*PublicGetMyRedirectionAfterLinkV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetMyRedirectionAfterLinkV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyRedirectionAfterLinkV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/users/me/link/redirection][%d] publicGetMyRedirectionAfterLinkV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetMyRedirectionAfterLinkV3InternalServerError) ToJSONString() string {
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

func (o *PublicGetMyRedirectionAfterLinkV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyRedirectionAfterLinkV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
