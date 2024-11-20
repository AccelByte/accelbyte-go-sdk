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

// RetrieveAllPoliciesFromBasePolicyReader is a Reader for the RetrieveAllPoliciesFromBasePolicy structure.
type RetrieveAllPoliciesFromBasePolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveAllPoliciesFromBasePolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveAllPoliciesFromBasePolicyOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveAllPoliciesFromBasePolicyNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/policies returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveAllPoliciesFromBasePolicyOK creates a RetrieveAllPoliciesFromBasePolicyOK with default headers values
func NewRetrieveAllPoliciesFromBasePolicyOK() *RetrieveAllPoliciesFromBasePolicyOK {
	return &RetrieveAllPoliciesFromBasePolicyOK{}
}

/*RetrieveAllPoliciesFromBasePolicyOK handles this case with default header values.

  successful operation
*/
type RetrieveAllPoliciesFromBasePolicyOK struct {
	Payload []*legalclientmodels.RetrievePoliciesFromBasePolicyResponse
}

func (o *RetrieveAllPoliciesFromBasePolicyOK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/policies][%d] retrieveAllPoliciesFromBasePolicyOK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveAllPoliciesFromBasePolicyOK) ToJSONString() string {
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

func (o *RetrieveAllPoliciesFromBasePolicyOK) GetPayload() []*legalclientmodels.RetrievePoliciesFromBasePolicyResponse {
	return o.Payload
}

func (o *RetrieveAllPoliciesFromBasePolicyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrieveAllPoliciesFromBasePolicyNotFound creates a RetrieveAllPoliciesFromBasePolicyNotFound with default headers values
func NewRetrieveAllPoliciesFromBasePolicyNotFound() *RetrieveAllPoliciesFromBasePolicyNotFound {
	return &RetrieveAllPoliciesFromBasePolicyNotFound{}
}

/*RetrieveAllPoliciesFromBasePolicyNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40041</td><td>errors.net.accelbyte.platform.legal.policy_not_found</td></tr></table>
*/
type RetrieveAllPoliciesFromBasePolicyNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrieveAllPoliciesFromBasePolicyNotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/policies][%d] retrieveAllPoliciesFromBasePolicyNotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveAllPoliciesFromBasePolicyNotFound) ToJSONString() string {
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

func (o *RetrieveAllPoliciesFromBasePolicyNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrieveAllPoliciesFromBasePolicyNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
