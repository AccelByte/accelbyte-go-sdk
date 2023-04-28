// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// PublicQueryUserStatItems2Reader is a Reader for the PublicQueryUserStatItems2 structure.
type PublicQueryUserStatItems2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicQueryUserStatItems2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicQueryUserStatItems2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicQueryUserStatItems2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicQueryUserStatItems2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicQueryUserStatItems2UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicQueryUserStatItems2OK creates a PublicQueryUserStatItems2OK with default headers values
func NewPublicQueryUserStatItems2OK() *PublicQueryUserStatItems2OK {
	return &PublicQueryUserStatItems2OK{}
}

/*PublicQueryUserStatItems2OK handles this case with default header values.

  successful operation
*/
type PublicQueryUserStatItems2OK struct {
	Payload []*socialclientmodels.ADTOObjectForUserStatItemValue
}

func (o *PublicQueryUserStatItems2OK) Error() string {
	return fmt.Sprintf("[GET /social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] publicQueryUserStatItems2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicQueryUserStatItems2OK) ToJSONString() string {
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

func (o *PublicQueryUserStatItems2OK) GetPayload() []*socialclientmodels.ADTOObjectForUserStatItemValue {
	return o.Payload
}

func (o *PublicQueryUserStatItems2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicQueryUserStatItems2BadRequest creates a PublicQueryUserStatItems2BadRequest with default headers values
func NewPublicQueryUserStatItems2BadRequest() *PublicQueryUserStatItems2BadRequest {
	return &PublicQueryUserStatItems2BadRequest{}
}

/*PublicQueryUserStatItems2BadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12223</td><td>Invalid stat codes in namespace [{namespace}]: [{statCodes}]</td></tr></table>
*/
type PublicQueryUserStatItems2BadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicQueryUserStatItems2BadRequest) Error() string {
	return fmt.Sprintf("[GET /social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] publicQueryUserStatItems2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicQueryUserStatItems2BadRequest) ToJSONString() string {
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

func (o *PublicQueryUserStatItems2BadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicQueryUserStatItems2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicQueryUserStatItems2NotFound creates a PublicQueryUserStatItems2NotFound with default headers values
func NewPublicQueryUserStatItems2NotFound() *PublicQueryUserStatItems2NotFound {
	return &PublicQueryUserStatItems2NotFound{}
}

/*PublicQueryUserStatItems2NotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12243</td><td>Stats cannot be found in namespace [{namespace}]</td></tr></table>
*/
type PublicQueryUserStatItems2NotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicQueryUserStatItems2NotFound) Error() string {
	return fmt.Sprintf("[GET /social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] publicQueryUserStatItems2NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicQueryUserStatItems2NotFound) ToJSONString() string {
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

func (o *PublicQueryUserStatItems2NotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicQueryUserStatItems2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicQueryUserStatItems2UnprocessableEntity creates a PublicQueryUserStatItems2UnprocessableEntity with default headers values
func NewPublicQueryUserStatItems2UnprocessableEntity() *PublicQueryUserStatItems2UnprocessableEntity {
	return &PublicQueryUserStatItems2UnprocessableEntity{}
}

/*PublicQueryUserStatItems2UnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicQueryUserStatItems2UnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *PublicQueryUserStatItems2UnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] publicQueryUserStatItems2UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicQueryUserStatItems2UnprocessableEntity) ToJSONString() string {
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

func (o *PublicQueryUserStatItems2UnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicQueryUserStatItems2UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
