// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policies_with_namespace_v2

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

// RetrieveLatestPoliciesByNamespaceAndCountryPublic1Reader is a Reader for the RetrieveLatestPoliciesByNamespaceAndCountryPublic1 structure.
type RetrieveLatestPoliciesByNamespaceAndCountryPublic1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveLatestPoliciesByNamespaceAndCountryPublic1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/v2/public/policies/namespaces/{namespace}/countries/{countryCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveLatestPoliciesByNamespaceAndCountryPublic1OK creates a RetrieveLatestPoliciesByNamespaceAndCountryPublic1OK with default headers values
func NewRetrieveLatestPoliciesByNamespaceAndCountryPublic1OK() *RetrieveLatestPoliciesByNamespaceAndCountryPublic1OK {
	return &RetrieveLatestPoliciesByNamespaceAndCountryPublic1OK{}
}

/*RetrieveLatestPoliciesByNamespaceAndCountryPublic1OK handles this case with default header values.

  successful operation
*/
type RetrieveLatestPoliciesByNamespaceAndCountryPublic1OK struct {
	Payload []*legalclientmodels.RetrieveSimplePolicyPublicResponseV2
}

func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1OK) Error() string {
	return fmt.Sprintf("[GET /agreement/v2/public/policies/namespaces/{namespace}/countries/{countryCode}][%d] retrieveLatestPoliciesByNamespaceAndCountryPublic1OK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1OK) ToJSONString() string {
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

func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1OK) GetPayload() []*legalclientmodels.RetrieveSimplePolicyPublicResponseV2 {
	return o.Payload
}

func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
