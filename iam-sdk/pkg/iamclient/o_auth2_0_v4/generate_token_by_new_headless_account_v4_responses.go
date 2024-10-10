// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_v4

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

// GenerateTokenByNewHeadlessAccountV4Reader is a Reader for the GenerateTokenByNewHeadlessAccountV4 structure.
type GenerateTokenByNewHeadlessAccountV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GenerateTokenByNewHeadlessAccountV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGenerateTokenByNewHeadlessAccountV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 202:
		result := NewGenerateTokenByNewHeadlessAccountV4Accepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGenerateTokenByNewHeadlessAccountV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGenerateTokenByNewHeadlessAccountV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGenerateTokenByNewHeadlessAccountV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/oauth/headless/token returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGenerateTokenByNewHeadlessAccountV4OK creates a GenerateTokenByNewHeadlessAccountV4OK with default headers values
func NewGenerateTokenByNewHeadlessAccountV4OK() *GenerateTokenByNewHeadlessAccountV4OK {
	return &GenerateTokenByNewHeadlessAccountV4OK{}
}

/*GenerateTokenByNewHeadlessAccountV4OK handles this case with default header values.

  Succeed to create headless account and response token info.
*/
type GenerateTokenByNewHeadlessAccountV4OK struct {
	Payload *iamclientmodels.OauthmodelTokenResponseV3
}

func (o *GenerateTokenByNewHeadlessAccountV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/headless/token][%d] generateTokenByNewHeadlessAccountV4OK  %+v", 200, o.ToJSONString())
}

func (o *GenerateTokenByNewHeadlessAccountV4OK) ToJSONString() string {
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

func (o *GenerateTokenByNewHeadlessAccountV4OK) GetPayload() *iamclientmodels.OauthmodelTokenResponseV3 {
	return o.Payload
}

func (o *GenerateTokenByNewHeadlessAccountV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelTokenResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGenerateTokenByNewHeadlessAccountV4Accepted creates a GenerateTokenByNewHeadlessAccountV4Accepted with default headers values
func NewGenerateTokenByNewHeadlessAccountV4Accepted() *GenerateTokenByNewHeadlessAccountV4Accepted {
	return &GenerateTokenByNewHeadlessAccountV4Accepted{}
}

/*GenerateTokenByNewHeadlessAccountV4Accepted handles this case with default header values.

  Succeed to create headless account and response token info.
*/
type GenerateTokenByNewHeadlessAccountV4Accepted struct {
	Payload *iamclientmodels.OauthmodelLoginQueueTicketResponse
}

func (o *GenerateTokenByNewHeadlessAccountV4Accepted) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/headless/token][%d] generateTokenByNewHeadlessAccountV4Accepted  %+v", 202, o.ToJSONString())
}

func (o *GenerateTokenByNewHeadlessAccountV4Accepted) ToJSONString() string {
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

func (o *GenerateTokenByNewHeadlessAccountV4Accepted) GetPayload() *iamclientmodels.OauthmodelLoginQueueTicketResponse {
	return o.Payload
}

func (o *GenerateTokenByNewHeadlessAccountV4Accepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelLoginQueueTicketResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGenerateTokenByNewHeadlessAccountV4BadRequest creates a GenerateTokenByNewHeadlessAccountV4BadRequest with default headers values
func NewGenerateTokenByNewHeadlessAccountV4BadRequest() *GenerateTokenByNewHeadlessAccountV4BadRequest {
	return &GenerateTokenByNewHeadlessAccountV4BadRequest{}
}

/*GenerateTokenByNewHeadlessAccountV4BadRequest handles this case with default header values.

  Invalid platform linking token or clientID not match.
*/
type GenerateTokenByNewHeadlessAccountV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GenerateTokenByNewHeadlessAccountV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/headless/token][%d] generateTokenByNewHeadlessAccountV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GenerateTokenByNewHeadlessAccountV4BadRequest) ToJSONString() string {
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

func (o *GenerateTokenByNewHeadlessAccountV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GenerateTokenByNewHeadlessAccountV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGenerateTokenByNewHeadlessAccountV4Unauthorized creates a GenerateTokenByNewHeadlessAccountV4Unauthorized with default headers values
func NewGenerateTokenByNewHeadlessAccountV4Unauthorized() *GenerateTokenByNewHeadlessAccountV4Unauthorized {
	return &GenerateTokenByNewHeadlessAccountV4Unauthorized{}
}

/*GenerateTokenByNewHeadlessAccountV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10213</td><td>country is blocked</td></tr></table>
*/
type GenerateTokenByNewHeadlessAccountV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GenerateTokenByNewHeadlessAccountV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/headless/token][%d] generateTokenByNewHeadlessAccountV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GenerateTokenByNewHeadlessAccountV4Unauthorized) ToJSONString() string {
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

func (o *GenerateTokenByNewHeadlessAccountV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GenerateTokenByNewHeadlessAccountV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGenerateTokenByNewHeadlessAccountV4NotFound creates a GenerateTokenByNewHeadlessAccountV4NotFound with default headers values
func NewGenerateTokenByNewHeadlessAccountV4NotFound() *GenerateTokenByNewHeadlessAccountV4NotFound {
	return &GenerateTokenByNewHeadlessAccountV4NotFound{}
}

/*GenerateTokenByNewHeadlessAccountV4NotFound handles this case with default header values.

  Platform linking token not found.
*/
type GenerateTokenByNewHeadlessAccountV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GenerateTokenByNewHeadlessAccountV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/headless/token][%d] generateTokenByNewHeadlessAccountV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *GenerateTokenByNewHeadlessAccountV4NotFound) ToJSONString() string {
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

func (o *GenerateTokenByNewHeadlessAccountV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GenerateTokenByNewHeadlessAccountV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
