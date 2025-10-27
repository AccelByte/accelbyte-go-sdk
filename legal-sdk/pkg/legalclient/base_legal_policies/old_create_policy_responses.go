// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// OldCreatePolicyReader is a Reader for the OldCreatePolicy structure.
type OldCreatePolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *OldCreatePolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewOldCreatePolicyCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewOldCreatePolicyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewOldCreatePolicyNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewOldCreatePolicyUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /agreement/admin/base-policies returns an error %d: %s", response.Code(), string(data))
	}
}

// NewOldCreatePolicyCreated creates a OldCreatePolicyCreated with default headers values
func NewOldCreatePolicyCreated() *OldCreatePolicyCreated {
	return &OldCreatePolicyCreated{}
}

/*OldCreatePolicyCreated handles this case with default header values.

  successful operation
*/
type OldCreatePolicyCreated struct {
	Payload *legalclientmodels.CreateBasePolicyResponse
}

func (o *OldCreatePolicyCreated) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/base-policies][%d] oldCreatePolicyCreated  %+v", 201, o.ToJSONString())
}

func (o *OldCreatePolicyCreated) ToJSONString() string {
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

func (o *OldCreatePolicyCreated) GetPayload() *legalclientmodels.CreateBasePolicyResponse {
	return o.Payload
}

func (o *OldCreatePolicyCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.CreateBasePolicyResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewOldCreatePolicyBadRequest creates a OldCreatePolicyBadRequest with default headers values
func NewOldCreatePolicyBadRequest() *OldCreatePolicyBadRequest {
	return &OldCreatePolicyBadRequest{}
}

/*OldCreatePolicyBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40038</td><td>errors.net.accelbyte.platform.legal.invalid_affected_client_id</td></tr><tr><td>40026</td><td>errors.net.accelbyte.platform.legal.not_allow_create_studio_policy</td></tr></table>
*/
type OldCreatePolicyBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldCreatePolicyBadRequest) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/base-policies][%d] oldCreatePolicyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *OldCreatePolicyBadRequest) ToJSONString() string {
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

func (o *OldCreatePolicyBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldCreatePolicyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewOldCreatePolicyNotFound creates a OldCreatePolicyNotFound with default headers values
func NewOldCreatePolicyNotFound() *OldCreatePolicyNotFound {
	return &OldCreatePolicyNotFound{}
}

/*OldCreatePolicyNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40030</td><td>errors.net.accelbyte.platform.legal.policy_type_not_exist</td></tr></table>
*/
type OldCreatePolicyNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldCreatePolicyNotFound) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/base-policies][%d] oldCreatePolicyNotFound  %+v", 404, o.ToJSONString())
}

func (o *OldCreatePolicyNotFound) ToJSONString() string {
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

func (o *OldCreatePolicyNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldCreatePolicyNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewOldCreatePolicyUnprocessableEntity creates a OldCreatePolicyUnprocessableEntity with default headers values
func NewOldCreatePolicyUnprocessableEntity() *OldCreatePolicyUnprocessableEntity {
	return &OldCreatePolicyUnprocessableEntity{}
}

/*OldCreatePolicyUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type OldCreatePolicyUnprocessableEntity struct {
	Payload *legalclientmodels.ValidationErrorEntity
}

func (o *OldCreatePolicyUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/base-policies][%d] oldCreatePolicyUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *OldCreatePolicyUnprocessableEntity) ToJSONString() string {
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

func (o *OldCreatePolicyUnprocessableEntity) GetPayload() *legalclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *OldCreatePolicyUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
