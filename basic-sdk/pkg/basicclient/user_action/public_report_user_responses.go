// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_action

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// PublicReportUserReader is a Reader for the PublicReportUser structure.
type PublicReportUserReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicReportUserReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicReportUserCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicReportUserBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicReportUserUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /basic/v1/public/namespaces/{namespace}/users/{userId}/actions/report returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicReportUserCreated creates a PublicReportUserCreated with default headers values
func NewPublicReportUserCreated() *PublicReportUserCreated {
	return &PublicReportUserCreated{}
}

/*PublicReportUserCreated handles this case with default header values.

  successful operation
*/
type PublicReportUserCreated struct {
}

func (o *PublicReportUserCreated) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/{userId}/actions/report][%d] publicReportUserCreated ", 201)
}

func (o *PublicReportUserCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicReportUserBadRequest creates a PublicReportUserBadRequest with default headers values
func NewPublicReportUserBadRequest() *PublicReportUserBadRequest {
	return &PublicReportUserBadRequest{}
}

/*PublicReportUserBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type PublicReportUserBadRequest struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicReportUserBadRequest) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/{userId}/actions/report][%d] publicReportUserBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicReportUserBadRequest) ToJSONString() string {
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

func (o *PublicReportUserBadRequest) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicReportUserBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicReportUserUnprocessableEntity creates a PublicReportUserUnprocessableEntity with default headers values
func NewPublicReportUserUnprocessableEntity() *PublicReportUserUnprocessableEntity {
	return &PublicReportUserUnprocessableEntity{}
}

/*PublicReportUserUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicReportUserUnprocessableEntity struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *PublicReportUserUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/{userId}/actions/report][%d] publicReportUserUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicReportUserUnprocessableEntity) ToJSONString() string {
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

func (o *PublicReportUserUnprocessableEntity) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicReportUserUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
