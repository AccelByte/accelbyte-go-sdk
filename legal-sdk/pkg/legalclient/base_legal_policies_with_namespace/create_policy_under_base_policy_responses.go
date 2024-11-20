// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies_with_namespace

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

// CreatePolicyUnderBasePolicyReader is a Reader for the CreatePolicyUnderBasePolicy structure.
type CreatePolicyUnderBasePolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreatePolicyUnderBasePolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreatePolicyUnderBasePolicyCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreatePolicyUnderBasePolicyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/policies returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreatePolicyUnderBasePolicyCreated creates a CreatePolicyUnderBasePolicyCreated with default headers values
func NewCreatePolicyUnderBasePolicyCreated() *CreatePolicyUnderBasePolicyCreated {
	return &CreatePolicyUnderBasePolicyCreated{}
}

/*CreatePolicyUnderBasePolicyCreated handles this case with default header values.

  successful operation
*/
type CreatePolicyUnderBasePolicyCreated struct {
	Payload *legalclientmodels.CreatePolicyResponse
}

func (o *CreatePolicyUnderBasePolicyCreated) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/policies][%d] createPolicyUnderBasePolicyCreated  %+v", 201, o.ToJSONString())
}

func (o *CreatePolicyUnderBasePolicyCreated) ToJSONString() string {
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

func (o *CreatePolicyUnderBasePolicyCreated) GetPayload() *legalclientmodels.CreatePolicyResponse {
	return o.Payload
}

func (o *CreatePolicyUnderBasePolicyCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.CreatePolicyResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreatePolicyUnderBasePolicyBadRequest creates a CreatePolicyUnderBasePolicyBadRequest with default headers values
func NewCreatePolicyUnderBasePolicyBadRequest() *CreatePolicyUnderBasePolicyBadRequest {
	return &CreatePolicyUnderBasePolicyBadRequest{}
}

/*CreatePolicyUnderBasePolicyBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40032</td><td>errors.net.accelbyte.platform.legal.invalid_base_policy</td></tr></table>
*/
type CreatePolicyUnderBasePolicyBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *CreatePolicyUnderBasePolicyBadRequest) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/policies][%d] createPolicyUnderBasePolicyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreatePolicyUnderBasePolicyBadRequest) ToJSONString() string {
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

func (o *CreatePolicyUnderBasePolicyBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreatePolicyUnderBasePolicyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
