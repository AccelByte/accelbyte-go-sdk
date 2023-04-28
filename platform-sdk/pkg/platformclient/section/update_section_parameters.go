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

// NewUpdateSectionParams creates a new UpdateSectionParams object
// with the default values initialized.
func NewUpdateSectionParams() *UpdateSectionParams {
	var ()
	return &UpdateSectionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateSectionParamsWithTimeout creates a new UpdateSectionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateSectionParamsWithTimeout(timeout time.Duration) *UpdateSectionParams {
	var ()
	return &UpdateSectionParams{

		timeout: timeout,
	}
}

// NewUpdateSectionParamsWithContext creates a new UpdateSectionParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateSectionParamsWithContext(ctx context.Context) *UpdateSectionParams {
	var ()
	return &UpdateSectionParams{

		Context: ctx,
	}
}

// NewUpdateSectionParamsWithHTTPClient creates a new UpdateSectionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateSectionParamsWithHTTPClient(client *http.Client) *UpdateSectionParams {
	var ()
	return &UpdateSectionParams{
		HTTPClient: client,
	}
}

/*UpdateSectionParams contains all the parameters to send to the API endpoint
for the update section operation typically these are written to a http.Request
*/
type UpdateSectionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.SectionUpdate
	/*Namespace*/
	Namespace string
	/*SectionID*/
	SectionID string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update section params
func (o *UpdateSectionParams) WithTimeout(timeout time.Duration) *UpdateSectionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update section params
func (o *UpdateSectionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update section params
func (o *UpdateSectionParams) WithContext(ctx context.Context) *UpdateSectionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update section params
func (o *UpdateSectionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update section params
func (o *UpdateSectionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update section params
func (o *UpdateSectionParams) WithHTTPClient(client *http.Client) *UpdateSectionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update section params
func (o *UpdateSectionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update section params
func (o *UpdateSectionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update section params
func (o *UpdateSectionParams) WithBody(body *platformclientmodels.SectionUpdate) *UpdateSectionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update section params
func (o *UpdateSectionParams) SetBody(body *platformclientmodels.SectionUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update section params
func (o *UpdateSectionParams) WithNamespace(namespace string) *UpdateSectionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update section params
func (o *UpdateSectionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSectionID adds the sectionID to the update section params
func (o *UpdateSectionParams) WithSectionID(sectionID string) *UpdateSectionParams {
	o.SetSectionID(sectionID)
	return o
}

// SetSectionID adds the sectionId to the update section params
func (o *UpdateSectionParams) SetSectionID(sectionID string) {
	o.SectionID = sectionID
}

// WithStoreID adds the storeID to the update section params
func (o *UpdateSectionParams) WithStoreID(storeID string) *UpdateSectionParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the update section params
func (o *UpdateSectionParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateSectionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param sectionId
	if err := r.SetPathParam("sectionId", o.SectionID); err != nil {
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
