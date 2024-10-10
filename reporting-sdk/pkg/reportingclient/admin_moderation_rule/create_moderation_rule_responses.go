// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_moderation_rule

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
)

// CreateModerationRuleReader is a Reader for the CreateModerationRule structure.
type CreateModerationRuleReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateModerationRuleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateModerationRuleCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateModerationRuleBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateModerationRuleConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateModerationRuleInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /reporting/v1/admin/namespaces/{namespace}/rule returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateModerationRuleCreated creates a CreateModerationRuleCreated with default headers values
func NewCreateModerationRuleCreated() *CreateModerationRuleCreated {
	return &CreateModerationRuleCreated{}
}

/*CreateModerationRuleCreated handles this case with default header values.

  Created
*/
type CreateModerationRuleCreated struct {
}

func (o *CreateModerationRuleCreated) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/rule][%d] createModerationRuleCreated ", 201)
}

func (o *CreateModerationRuleCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCreateModerationRuleBadRequest creates a CreateModerationRuleBadRequest with default headers values
func NewCreateModerationRuleBadRequest() *CreateModerationRuleBadRequest {
	return &CreateModerationRuleBadRequest{}
}

/*CreateModerationRuleBadRequest handles this case with default header values.

  Bad Request
*/
type CreateModerationRuleBadRequest struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *CreateModerationRuleBadRequest) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/rule][%d] createModerationRuleBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateModerationRuleBadRequest) ToJSONString() string {
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

func (o *CreateModerationRuleBadRequest) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *CreateModerationRuleBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateModerationRuleConflict creates a CreateModerationRuleConflict with default headers values
func NewCreateModerationRuleConflict() *CreateModerationRuleConflict {
	return &CreateModerationRuleConflict{}
}

/*CreateModerationRuleConflict handles this case with default header values.

  Conflict
*/
type CreateModerationRuleConflict struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *CreateModerationRuleConflict) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/rule][%d] createModerationRuleConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateModerationRuleConflict) ToJSONString() string {
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

func (o *CreateModerationRuleConflict) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *CreateModerationRuleConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateModerationRuleInternalServerError creates a CreateModerationRuleInternalServerError with default headers values
func NewCreateModerationRuleInternalServerError() *CreateModerationRuleInternalServerError {
	return &CreateModerationRuleInternalServerError{}
}

/*CreateModerationRuleInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateModerationRuleInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *CreateModerationRuleInternalServerError) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/rule][%d] createModerationRuleInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateModerationRuleInternalServerError) ToJSONString() string {
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

func (o *CreateModerationRuleInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *CreateModerationRuleInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
