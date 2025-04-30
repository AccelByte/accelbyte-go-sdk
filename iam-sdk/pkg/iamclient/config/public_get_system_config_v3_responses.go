// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

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

// PublicGetSystemConfigV3Reader is a Reader for the PublicGetSystemConfigV3 structure.
type PublicGetSystemConfigV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetSystemConfigV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetSystemConfigV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetSystemConfigV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/config/public returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetSystemConfigV3OK creates a PublicGetSystemConfigV3OK with default headers values
func NewPublicGetSystemConfigV3OK() *PublicGetSystemConfigV3OK {
	return &PublicGetSystemConfigV3OK{}
}

/*PublicGetSystemConfigV3OK handles this case with default header values.

  OK
*/
type PublicGetSystemConfigV3OK struct {
	Payload *iamclientmodels.ModelInternalConfigResponseV3
}

func (o *PublicGetSystemConfigV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/config/public][%d] publicGetSystemConfigV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetSystemConfigV3OK) ToJSONString() string {
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

func (o *PublicGetSystemConfigV3OK) GetPayload() *iamclientmodels.ModelInternalConfigResponseV3 {
	return o.Payload
}

func (o *PublicGetSystemConfigV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelInternalConfigResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetSystemConfigV3InternalServerError creates a PublicGetSystemConfigV3InternalServerError with default headers values
func NewPublicGetSystemConfigV3InternalServerError() *PublicGetSystemConfigV3InternalServerError {
	return &PublicGetSystemConfigV3InternalServerError{}
}

/*PublicGetSystemConfigV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetSystemConfigV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetSystemConfigV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/config/public][%d] publicGetSystemConfigV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetSystemConfigV3InternalServerError) ToJSONString() string {
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

func (o *PublicGetSystemConfigV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetSystemConfigV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
