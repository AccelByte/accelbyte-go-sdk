// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies_with_namespace

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewRetrieveAllLegalPoliciesByNamespaceParams creates a new RetrieveAllLegalPoliciesByNamespaceParams object
// with the default values initialized.
func NewRetrieveAllLegalPoliciesByNamespaceParams() *RetrieveAllLegalPoliciesByNamespaceParams {
	var ()
	return &RetrieveAllLegalPoliciesByNamespaceParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveAllLegalPoliciesByNamespaceParamsWithTimeout creates a new RetrieveAllLegalPoliciesByNamespaceParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveAllLegalPoliciesByNamespaceParamsWithTimeout(timeout time.Duration) *RetrieveAllLegalPoliciesByNamespaceParams {
	var ()
	return &RetrieveAllLegalPoliciesByNamespaceParams{

		timeout: timeout,
	}
}

// NewRetrieveAllLegalPoliciesByNamespaceParamsWithContext creates a new RetrieveAllLegalPoliciesByNamespaceParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveAllLegalPoliciesByNamespaceParamsWithContext(ctx context.Context) *RetrieveAllLegalPoliciesByNamespaceParams {
	var ()
	return &RetrieveAllLegalPoliciesByNamespaceParams{

		Context: ctx,
	}
}

// NewRetrieveAllLegalPoliciesByNamespaceParamsWithHTTPClient creates a new RetrieveAllLegalPoliciesByNamespaceParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveAllLegalPoliciesByNamespaceParamsWithHTTPClient(client *http.Client) *RetrieveAllLegalPoliciesByNamespaceParams {
	var ()
	return &RetrieveAllLegalPoliciesByNamespaceParams{
		HTTPClient: client,
	}
}

/*RetrieveAllLegalPoliciesByNamespaceParams contains all the parameters to send to the API endpoint
for the retrieve all legal policies by namespace operation typically these are written to a http.Request
*/
type RetrieveAllLegalPoliciesByNamespaceParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) WithTimeout(timeout time.Duration) *RetrieveAllLegalPoliciesByNamespaceParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) WithContext(ctx context.Context) *RetrieveAllLegalPoliciesByNamespaceParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) WithHTTPClient(client *http.Client) *RetrieveAllLegalPoliciesByNamespaceParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) WithNamespace(namespace string) *RetrieveAllLegalPoliciesByNamespaceParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve all legal policies by namespace params
func (o *RetrieveAllLegalPoliciesByNamespaceParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveAllLegalPoliciesByNamespaceParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
