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

// RetrieveAllLegalPoliciesByNamespaceReader is a Reader for the RetrieveAllLegalPoliciesByNamespace structure.
type RetrieveAllLegalPoliciesByNamespaceReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveAllLegalPoliciesByNamespaceReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveAllLegalPoliciesByNamespaceOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/namespaces/{namespace}/base-policies returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveAllLegalPoliciesByNamespaceOK creates a RetrieveAllLegalPoliciesByNamespaceOK with default headers values
func NewRetrieveAllLegalPoliciesByNamespaceOK() *RetrieveAllLegalPoliciesByNamespaceOK {
	return &RetrieveAllLegalPoliciesByNamespaceOK{}
}

/*RetrieveAllLegalPoliciesByNamespaceOK handles this case with default header values.

  successful operation
*/
type RetrieveAllLegalPoliciesByNamespaceOK struct {
	Payload []*legalclientmodels.RetrieveBasePolicyResponse
}

func (o *RetrieveAllLegalPoliciesByNamespaceOK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/namespaces/{namespace}/base-policies][%d] retrieveAllLegalPoliciesByNamespaceOK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveAllLegalPoliciesByNamespaceOK) ToJSONString() string {
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

func (o *RetrieveAllLegalPoliciesByNamespaceOK) GetPayload() []*legalclientmodels.RetrieveBasePolicyResponse {
	return o.Payload
}

func (o *RetrieveAllLegalPoliciesByNamespaceOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
