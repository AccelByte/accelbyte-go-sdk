// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package localized_policy_versions_with_namespace

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

// RetrieveLocalizedPolicyVersions1Reader is a Reader for the RetrieveLocalizedPolicyVersions1 structure.
type RetrieveLocalizedPolicyVersions1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveLocalizedPolicyVersions1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveLocalizedPolicyVersions1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveLocalizedPolicyVersions1OK creates a RetrieveLocalizedPolicyVersions1OK with default headers values
func NewRetrieveLocalizedPolicyVersions1OK() *RetrieveLocalizedPolicyVersions1OK {
	return &RetrieveLocalizedPolicyVersions1OK{}
}

/*RetrieveLocalizedPolicyVersions1OK handles this case with default header values.

  successful operation
*/
type RetrieveLocalizedPolicyVersions1OK struct {
	Payload []*legalclientmodels.RetrieveLocalizedPolicyVersionResponse
}

func (o *RetrieveLocalizedPolicyVersions1OK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}][%d] retrieveLocalizedPolicyVersions1OK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveLocalizedPolicyVersions1OK) ToJSONString() string {
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

func (o *RetrieveLocalizedPolicyVersions1OK) GetPayload() []*legalclientmodels.RetrieveLocalizedPolicyVersionResponse {
	return o.Payload
}

func (o *RetrieveLocalizedPolicyVersions1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
