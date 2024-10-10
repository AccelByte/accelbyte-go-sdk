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

// UpdateModerationRuleReader is a Reader for the UpdateModerationRule structure.
type UpdateModerationRuleReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateModerationRuleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateModerationRuleOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateModerationRuleBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateModerationRuleNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateModerationRuleConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateModerationRuleInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateModerationRuleOK creates a UpdateModerationRuleOK with default headers values
func NewUpdateModerationRuleOK() *UpdateModerationRuleOK {
	return &UpdateModerationRuleOK{}
}

/*UpdateModerationRuleOK handles this case with default header values.

  OK
*/
type UpdateModerationRuleOK struct {
	Payload *reportingclientmodels.RestapiModerationRuleResponse
}

func (o *UpdateModerationRuleOK) Error() string {
	return fmt.Sprintf("[PUT /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}][%d] updateModerationRuleOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateModerationRuleOK) ToJSONString() string {
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

func (o *UpdateModerationRuleOK) GetPayload() *reportingclientmodels.RestapiModerationRuleResponse {
	return o.Payload
}

func (o *UpdateModerationRuleOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiModerationRuleResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateModerationRuleBadRequest creates a UpdateModerationRuleBadRequest with default headers values
func NewUpdateModerationRuleBadRequest() *UpdateModerationRuleBadRequest {
	return &UpdateModerationRuleBadRequest{}
}

/*UpdateModerationRuleBadRequest handles this case with default header values.

  Bad Request
*/
type UpdateModerationRuleBadRequest struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *UpdateModerationRuleBadRequest) Error() string {
	return fmt.Sprintf("[PUT /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}][%d] updateModerationRuleBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateModerationRuleBadRequest) ToJSONString() string {
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

func (o *UpdateModerationRuleBadRequest) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *UpdateModerationRuleBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateModerationRuleNotFound creates a UpdateModerationRuleNotFound with default headers values
func NewUpdateModerationRuleNotFound() *UpdateModerationRuleNotFound {
	return &UpdateModerationRuleNotFound{}
}

/*UpdateModerationRuleNotFound handles this case with default header values.

  Not Found
*/
type UpdateModerationRuleNotFound struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *UpdateModerationRuleNotFound) Error() string {
	return fmt.Sprintf("[PUT /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}][%d] updateModerationRuleNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateModerationRuleNotFound) ToJSONString() string {
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

func (o *UpdateModerationRuleNotFound) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *UpdateModerationRuleNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateModerationRuleConflict creates a UpdateModerationRuleConflict with default headers values
func NewUpdateModerationRuleConflict() *UpdateModerationRuleConflict {
	return &UpdateModerationRuleConflict{}
}

/*UpdateModerationRuleConflict handles this case with default header values.

  Conflict
*/
type UpdateModerationRuleConflict struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *UpdateModerationRuleConflict) Error() string {
	return fmt.Sprintf("[PUT /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}][%d] updateModerationRuleConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateModerationRuleConflict) ToJSONString() string {
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

func (o *UpdateModerationRuleConflict) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *UpdateModerationRuleConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateModerationRuleInternalServerError creates a UpdateModerationRuleInternalServerError with default headers values
func NewUpdateModerationRuleInternalServerError() *UpdateModerationRuleInternalServerError {
	return &UpdateModerationRuleInternalServerError{}
}

/*UpdateModerationRuleInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateModerationRuleInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *UpdateModerationRuleInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}][%d] updateModerationRuleInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateModerationRuleInternalServerError) ToJSONString() string {
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

func (o *UpdateModerationRuleInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *UpdateModerationRuleInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
