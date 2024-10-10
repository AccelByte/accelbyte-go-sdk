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

// PartialUpdatePolicyReader is a Reader for the PartialUpdatePolicy structure.
type PartialUpdatePolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PartialUpdatePolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPartialUpdatePolicyOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPartialUpdatePolicyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPartialUpdatePolicyNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /agreement/admin/base-policies/{basePolicyId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPartialUpdatePolicyOK creates a PartialUpdatePolicyOK with default headers values
func NewPartialUpdatePolicyOK() *PartialUpdatePolicyOK {
	return &PartialUpdatePolicyOK{}
}

/*PartialUpdatePolicyOK handles this case with default header values.

  successful operation
*/
type PartialUpdatePolicyOK struct {
	Payload *legalclientmodels.UpdateBasePolicyResponse
}

func (o *PartialUpdatePolicyOK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/base-policies/{basePolicyId}][%d] partialUpdatePolicyOK  %+v", 200, o.ToJSONString())
}

func (o *PartialUpdatePolicyOK) ToJSONString() string {
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

func (o *PartialUpdatePolicyOK) GetPayload() *legalclientmodels.UpdateBasePolicyResponse {
	return o.Payload
}

func (o *PartialUpdatePolicyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.UpdateBasePolicyResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPartialUpdatePolicyBadRequest creates a PartialUpdatePolicyBadRequest with default headers values
func NewPartialUpdatePolicyBadRequest() *PartialUpdatePolicyBadRequest {
	return &PartialUpdatePolicyBadRequest{}
}

/*PartialUpdatePolicyBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40032</td><td>errors.net.accelbyte.platform.legal.invalid_base_policy</td></tr><tr><td>40038</td><td>errors.net.accelbyte.platform.legal.invalid_affected_client_id</td></tr></table>
*/
type PartialUpdatePolicyBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *PartialUpdatePolicyBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/base-policies/{basePolicyId}][%d] partialUpdatePolicyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PartialUpdatePolicyBadRequest) ToJSONString() string {
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

func (o *PartialUpdatePolicyBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PartialUpdatePolicyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPartialUpdatePolicyNotFound creates a PartialUpdatePolicyNotFound with default headers values
func NewPartialUpdatePolicyNotFound() *PartialUpdatePolicyNotFound {
	return &PartialUpdatePolicyNotFound{}
}

/*PartialUpdatePolicyNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40030</td><td>errors.net.accelbyte.platform.legal.policy_type_not_exist</td></tr></table>
*/
type PartialUpdatePolicyNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *PartialUpdatePolicyNotFound) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/base-policies/{basePolicyId}][%d] partialUpdatePolicyNotFound  %+v", 404, o.ToJSONString())
}

func (o *PartialUpdatePolicyNotFound) ToJSONString() string {
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

func (o *PartialUpdatePolicyNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PartialUpdatePolicyNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
