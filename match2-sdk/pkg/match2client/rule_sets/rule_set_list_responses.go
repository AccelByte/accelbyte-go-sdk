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

// RuleSetListReader is a Reader for the RuleSetList structure.
type RuleSetListReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RuleSetListReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRuleSetListOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRuleSetListUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRuleSetListForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRuleSetListInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/namespaces/{namespace}/rulesets returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRuleSetListOK creates a RuleSetListOK with default headers values
func NewRuleSetListOK() *RuleSetListOK {
	return &RuleSetListOK{}
}

/*RuleSetListOK handles this case with default header values.

  Created
*/
type RuleSetListOK struct {
	Payload *match2clientmodels.APIListRuleSetsResponse
}

func (o *RuleSetListOK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/rulesets][%d] ruleSetListOK  %+v", 200, o.ToJSONString())
}

func (o *RuleSetListOK) ToJSONString() string {
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

func (o *RuleSetListOK) GetPayload() *match2clientmodels.APIListRuleSetsResponse {
	return o.Payload
}

func (o *RuleSetListOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIListRuleSetsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRuleSetListUnauthorized creates a RuleSetListUnauthorized with default headers values
func NewRuleSetListUnauthorized() *RuleSetListUnauthorized {
	return &RuleSetListUnauthorized{}
}

/*RuleSetListUnauthorized handles this case with default header values.

  Unauthorized
*/
type RuleSetListUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *RuleSetListUnauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/rulesets][%d] ruleSetListUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *RuleSetListUnauthorized) ToJSONString() string {
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

func (o *RuleSetListUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *RuleSetListUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRuleSetListForbidden creates a RuleSetListForbidden with default headers values
func NewRuleSetListForbidden() *RuleSetListForbidden {
	return &RuleSetListForbidden{}
}

/*RuleSetListForbidden handles this case with default header values.

  Forbidden
*/
type RuleSetListForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *RuleSetListForbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/rulesets][%d] ruleSetListForbidden  %+v", 403, o.ToJSONString())
}

func (o *RuleSetListForbidden) ToJSONString() string {
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

func (o *RuleSetListForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *RuleSetListForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRuleSetListInternalServerError creates a RuleSetListInternalServerError with default headers values
func NewRuleSetListInternalServerError() *RuleSetListInternalServerError {
	return &RuleSetListInternalServerError{}
}

/*RuleSetListInternalServerError handles this case with default header values.

  Internal Server Error
*/
type RuleSetListInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *RuleSetListInternalServerError) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/rulesets][%d] ruleSetListInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RuleSetListInternalServerError) ToJSONString() string {
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

func (o *RuleSetListInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *RuleSetListInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
