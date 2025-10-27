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

// OldPartialUpdatePolicyReader is a Reader for the OldPartialUpdatePolicy structure.
type OldPartialUpdatePolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *OldPartialUpdatePolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewOldPartialUpdatePolicyOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewOldPartialUpdatePolicyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewOldPartialUpdatePolicyNotFound()
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

// NewOldPartialUpdatePolicyOK creates a OldPartialUpdatePolicyOK with default headers values
func NewOldPartialUpdatePolicyOK() *OldPartialUpdatePolicyOK {
	return &OldPartialUpdatePolicyOK{}
}

/*OldPartialUpdatePolicyOK handles this case with default header values.

  successful operation
*/
type OldPartialUpdatePolicyOK struct {
	Payload *legalclientmodels.UpdateBasePolicyResponse
}

func (o *OldPartialUpdatePolicyOK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/base-policies/{basePolicyId}][%d] oldPartialUpdatePolicyOK  %+v", 200, o.ToJSONString())
}

func (o *OldPartialUpdatePolicyOK) ToJSONString() string {
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

func (o *OldPartialUpdatePolicyOK) GetPayload() *legalclientmodels.UpdateBasePolicyResponse {
	return o.Payload
}

func (o *OldPartialUpdatePolicyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewOldPartialUpdatePolicyBadRequest creates a OldPartialUpdatePolicyBadRequest with default headers values
func NewOldPartialUpdatePolicyBadRequest() *OldPartialUpdatePolicyBadRequest {
	return &OldPartialUpdatePolicyBadRequest{}
}

/*OldPartialUpdatePolicyBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40032</td><td>errors.net.accelbyte.platform.legal.invalid_base_policy</td></tr><tr><td>40038</td><td>errors.net.accelbyte.platform.legal.invalid_affected_client_id</td></tr></table>
*/
type OldPartialUpdatePolicyBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldPartialUpdatePolicyBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/base-policies/{basePolicyId}][%d] oldPartialUpdatePolicyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *OldPartialUpdatePolicyBadRequest) ToJSONString() string {
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

func (o *OldPartialUpdatePolicyBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldPartialUpdatePolicyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewOldPartialUpdatePolicyNotFound creates a OldPartialUpdatePolicyNotFound with default headers values
func NewOldPartialUpdatePolicyNotFound() *OldPartialUpdatePolicyNotFound {
	return &OldPartialUpdatePolicyNotFound{}
}

/*OldPartialUpdatePolicyNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40030</td><td>errors.net.accelbyte.platform.legal.policy_type_not_exist</td></tr></table>
*/
type OldPartialUpdatePolicyNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldPartialUpdatePolicyNotFound) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/base-policies/{basePolicyId}][%d] oldPartialUpdatePolicyNotFound  %+v", 404, o.ToJSONString())
}

func (o *OldPartialUpdatePolicyNotFound) ToJSONString() string {
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

func (o *OldPartialUpdatePolicyNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldPartialUpdatePolicyNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
