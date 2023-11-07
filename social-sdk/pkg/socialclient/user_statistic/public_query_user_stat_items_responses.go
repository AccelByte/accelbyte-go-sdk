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

// PublicQueryUserStatItemsReader is a Reader for the PublicQueryUserStatItems structure.
type PublicQueryUserStatItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicQueryUserStatItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicQueryUserStatItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicQueryUserStatItemsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicQueryUserStatItemsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicQueryUserStatItemsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicQueryUserStatItemsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v1/public/namespaces/{namespace}/users/{userId}/statitems returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicQueryUserStatItemsOK creates a PublicQueryUserStatItemsOK with default headers values
func NewPublicQueryUserStatItemsOK() *PublicQueryUserStatItemsOK {
	return &PublicQueryUserStatItemsOK{}
}

/*PublicQueryUserStatItemsOK handles this case with default header values.

  successful operation
*/
type PublicQueryUserStatItemsOK struct {
	Payload *socialclientmodels.UserStatItemPagingSlicedResult
}

func (o *PublicQueryUserStatItemsOK) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/{userId}/statitems][%d] publicQueryUserStatItemsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicQueryUserStatItemsOK) ToJSONString() string {
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

func (o *PublicQueryUserStatItemsOK) GetPayload() *socialclientmodels.UserStatItemPagingSlicedResult {
	return o.Payload
}

func (o *PublicQueryUserStatItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.UserStatItemPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicQueryUserStatItemsUnauthorized creates a PublicQueryUserStatItemsUnauthorized with default headers values
func NewPublicQueryUserStatItemsUnauthorized() *PublicQueryUserStatItemsUnauthorized {
	return &PublicQueryUserStatItemsUnauthorized{}
}

/*PublicQueryUserStatItemsUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type PublicQueryUserStatItemsUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicQueryUserStatItemsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/{userId}/statitems][%d] publicQueryUserStatItemsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicQueryUserStatItemsUnauthorized) ToJSONString() string {
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

func (o *PublicQueryUserStatItemsUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicQueryUserStatItemsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicQueryUserStatItemsForbidden creates a PublicQueryUserStatItemsForbidden with default headers values
func NewPublicQueryUserStatItemsForbidden() *PublicQueryUserStatItemsForbidden {
	return &PublicQueryUserStatItemsForbidden{}
}

/*PublicQueryUserStatItemsForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicQueryUserStatItemsForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicQueryUserStatItemsForbidden) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/{userId}/statitems][%d] publicQueryUserStatItemsForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicQueryUserStatItemsForbidden) ToJSONString() string {
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

func (o *PublicQueryUserStatItemsForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicQueryUserStatItemsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicQueryUserStatItemsUnprocessableEntity creates a PublicQueryUserStatItemsUnprocessableEntity with default headers values
func NewPublicQueryUserStatItemsUnprocessableEntity() *PublicQueryUserStatItemsUnprocessableEntity {
	return &PublicQueryUserStatItemsUnprocessableEntity{}
}

/*PublicQueryUserStatItemsUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicQueryUserStatItemsUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *PublicQueryUserStatItemsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/{userId}/statitems][%d] publicQueryUserStatItemsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicQueryUserStatItemsUnprocessableEntity) ToJSONString() string {
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

func (o *PublicQueryUserStatItemsUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicQueryUserStatItemsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicQueryUserStatItemsInternalServerError creates a PublicQueryUserStatItemsInternalServerError with default headers values
func NewPublicQueryUserStatItemsInternalServerError() *PublicQueryUserStatItemsInternalServerError {
	return &PublicQueryUserStatItemsInternalServerError{}
}

/*PublicQueryUserStatItemsInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type PublicQueryUserStatItemsInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicQueryUserStatItemsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/{userId}/statitems][%d] publicQueryUserStatItemsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicQueryUserStatItemsInternalServerError) ToJSONString() string {
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

func (o *PublicQueryUserStatItemsInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicQueryUserStatItemsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
