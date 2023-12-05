// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_extension

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

// GenerateTokenByNewHeadlessAccountV3Reader is a Reader for the GenerateTokenByNewHeadlessAccountV3 structure.
type GenerateTokenByNewHeadlessAccountV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GenerateTokenByNewHeadlessAccountV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGenerateTokenByNewHeadlessAccountV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGenerateTokenByNewHeadlessAccountV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGenerateTokenByNewHeadlessAccountV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGenerateTokenByNewHeadlessAccountV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/headless/token returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGenerateTokenByNewHeadlessAccountV3OK creates a GenerateTokenByNewHeadlessAccountV3OK with default headers values
func NewGenerateTokenByNewHeadlessAccountV3OK() *GenerateTokenByNewHeadlessAccountV3OK {
	return &GenerateTokenByNewHeadlessAccountV3OK{}
}

/*GenerateTokenByNewHeadlessAccountV3OK handles this case with default header values.

  Succeed to create headless account and response token info.
*/
type GenerateTokenByNewHeadlessAccountV3OK struct {
	Payload *iamclientmodels.OauthmodelTokenResponseV3
}

func (o *GenerateTokenByNewHeadlessAccountV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/headless/token][%d] generateTokenByNewHeadlessAccountV3OK  %+v", 200, o.ToJSONString())
}

func (o *GenerateTokenByNewHeadlessAccountV3OK) ToJSONString() string {
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

func (o *GenerateTokenByNewHeadlessAccountV3OK) GetPayload() *iamclientmodels.OauthmodelTokenResponseV3 {
	return o.Payload
}

func (o *GenerateTokenByNewHeadlessAccountV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGenerateTokenByNewHeadlessAccountV3BadRequest creates a GenerateTokenByNewHeadlessAccountV3BadRequest with default headers values
func NewGenerateTokenByNewHeadlessAccountV3BadRequest() *GenerateTokenByNewHeadlessAccountV3BadRequest {
	return &GenerateTokenByNewHeadlessAccountV3BadRequest{}
}

/*GenerateTokenByNewHeadlessAccountV3BadRequest handles this case with default header values.

  Invalid platform linking token or clientID not match.
*/
type GenerateTokenByNewHeadlessAccountV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GenerateTokenByNewHeadlessAccountV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/headless/token][%d] generateTokenByNewHeadlessAccountV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GenerateTokenByNewHeadlessAccountV3BadRequest) ToJSONString() string {
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

func (o *GenerateTokenByNewHeadlessAccountV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GenerateTokenByNewHeadlessAccountV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGenerateTokenByNewHeadlessAccountV3Unauthorized creates a GenerateTokenByNewHeadlessAccountV3Unauthorized with default headers values
func NewGenerateTokenByNewHeadlessAccountV3Unauthorized() *GenerateTokenByNewHeadlessAccountV3Unauthorized {
	return &GenerateTokenByNewHeadlessAccountV3Unauthorized{}
}

/*GenerateTokenByNewHeadlessAccountV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10213</td><td>country is blocked</td></tr></table>
*/
type GenerateTokenByNewHeadlessAccountV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GenerateTokenByNewHeadlessAccountV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/headless/token][%d] generateTokenByNewHeadlessAccountV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GenerateTokenByNewHeadlessAccountV3Unauthorized) ToJSONString() string {
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

func (o *GenerateTokenByNewHeadlessAccountV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GenerateTokenByNewHeadlessAccountV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGenerateTokenByNewHeadlessAccountV3NotFound creates a GenerateTokenByNewHeadlessAccountV3NotFound with default headers values
func NewGenerateTokenByNewHeadlessAccountV3NotFound() *GenerateTokenByNewHeadlessAccountV3NotFound {
	return &GenerateTokenByNewHeadlessAccountV3NotFound{}
}

/*GenerateTokenByNewHeadlessAccountV3NotFound handles this case with default header values.

  Platform linking token not found.
*/
type GenerateTokenByNewHeadlessAccountV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GenerateTokenByNewHeadlessAccountV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/headless/token][%d] generateTokenByNewHeadlessAccountV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *GenerateTokenByNewHeadlessAccountV3NotFound) ToJSONString() string {
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

func (o *GenerateTokenByNewHeadlessAccountV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GenerateTokenByNewHeadlessAccountV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
