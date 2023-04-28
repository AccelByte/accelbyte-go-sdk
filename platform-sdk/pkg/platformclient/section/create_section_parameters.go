// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package section

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewCreateSectionParams creates a new CreateSectionParams object
// with the default values initialized.
func NewCreateSectionParams() *CreateSectionParams {
	var ()
	return &CreateSectionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateSectionParamsWithTimeout creates a new CreateSectionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateSectionParamsWithTimeout(timeout time.Duration) *CreateSectionParams {
	var ()
	return &CreateSectionParams{

		timeout: timeout,
	}
}

// NewCreateSectionParamsWithContext creates a new CreateSectionParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateSectionParamsWithContext(ctx context.Context) *CreateSectionParams {
	var ()
	return &CreateSectionParams{

		Context: ctx,
	}
}

// NewCreateSectionParamsWithHTTPClient creates a new CreateSectionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateSectionParamsWithHTTPClient(client *http.Client) *CreateSectionParams {
	var ()
	return &CreateSectionParams{
		HTTPClient: client,
	}
}

/*CreateSectionParams contains all the parameters to send to the API endpoint
for the create section operation typically these are written to a http.Request
*/
type CreateSectionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.SectionCreate
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create section params
func (o *CreateSectionParams) WithTimeout(timeout time.Duration) *CreateSectionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create section params
func (o *CreateSectionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create section params
func (o *CreateSectionParams) WithContext(ctx context.Context) *CreateSectionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create section params
func (o *CreateSectionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create section params
func (o *CreateSectionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create section params
func (o *CreateSectionParams) WithHTTPClient(client *http.Client) *CreateSectionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create section params
func (o *CreateSectionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create section params
func (o *CreateSectionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create section params
func (o *CreateSectionParams) WithBody(body *platformclientmodels.SectionCreate) *CreateSectionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create section params
func (o *CreateSectionParams) SetBody(body *platformclientmodels.SectionCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the create section params
func (o *CreateSectionParams) WithNamespace(namespace string) *CreateSectionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create section params
func (o *CreateSectionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the create section params
func (o *CreateSectionParams) WithStoreID(storeID string) *CreateSectionParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the create section params
func (o *CreateSectionParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *CreateSectionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param storeId
	qrStoreID := o.StoreID
	qStoreID := qrStoreID
	if qStoreID != "" {
		if err := r.SetQueryParam("storeId", qStoreID); err != nil {
			return err
		}
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
