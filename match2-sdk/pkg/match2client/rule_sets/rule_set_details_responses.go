// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package rule_sets

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// RuleSetDetailsReader is a Reader for the RuleSetDetails structure.
type RuleSetDetailsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RuleSetDetailsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRuleSetDetailsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRuleSetDetailsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRuleSetDetailsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRuleSetDetailsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/namespaces/{namespace}/rulesets/{ruleset} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRuleSetDetailsOK creates a RuleSetDetailsOK with default headers values
func NewRuleSetDetailsOK() *RuleSetDetailsOK {
	return &RuleSetDetailsOK{}
}

/*RuleSetDetailsOK handles this case with default header values.

  Created
*/
type RuleSetDetailsOK struct {
	Payload *match2clientmodels.APIRuleSetPayload
}

func (o *RuleSetDetailsOK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/rulesets/{ruleset}][%d] ruleSetDetailsOK  %+v", 200, o.ToJSONString())
}

func (o *RuleSetDetailsOK) ToJSONString() string {
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

func (o *RuleSetDetailsOK) GetPayload() *match2clientmodels.APIRuleSetPayload {
	return o.Payload
}

func (o *RuleSetDetailsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIRuleSetPayload)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRuleSetDetailsUnauthorized creates a RuleSetDetailsUnauthorized with default headers values
func NewRuleSetDetailsUnauthorized() *RuleSetDetailsUnauthorized {
	return &RuleSetDetailsUnauthorized{}
}

/*RuleSetDetailsUnauthorized handles this case with default header values.

  Unauthorized
*/
type RuleSetDetailsUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *RuleSetDetailsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/rulesets/{ruleset}][%d] ruleSetDetailsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *RuleSetDetailsUnauthorized) ToJSONString() string {
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

func (o *RuleSetDetailsUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *RuleSetDetailsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRuleSetDetailsForbidden creates a RuleSetDetailsForbidden with default headers values
func NewRuleSetDetailsForbidden() *RuleSetDetailsForbidden {
	return &RuleSetDetailsForbidden{}
}

/*RuleSetDetailsForbidden handles this case with default header values.

  Forbidden
*/
type RuleSetDetailsForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *RuleSetDetailsForbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/rulesets/{ruleset}][%d] ruleSetDetailsForbidden  %+v", 403, o.ToJSONString())
}

func (o *RuleSetDetailsForbidden) ToJSONString() string {
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

func (o *RuleSetDetailsForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *RuleSetDetailsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRuleSetDetailsInternalServerError creates a RuleSetDetailsInternalServerError with default headers values
func NewRuleSetDetailsInternalServerError() *RuleSetDetailsInternalServerError {
	return &RuleSetDetailsInternalServerError{}
}

/*RuleSetDetailsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type RuleSetDetailsInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *RuleSetDetailsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/rulesets/{ruleset}][%d] ruleSetDetailsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RuleSetDetailsInternalServerError) ToJSONString() string {
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

func (o *RuleSetDetailsInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *RuleSetDetailsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
