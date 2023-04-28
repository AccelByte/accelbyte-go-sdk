// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package category

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

// NewUpdateCategoryParams creates a new UpdateCategoryParams object
// with the default values initialized.
func NewUpdateCategoryParams() *UpdateCategoryParams {
	var ()
	return &UpdateCategoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateCategoryParamsWithTimeout creates a new UpdateCategoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateCategoryParamsWithTimeout(timeout time.Duration) *UpdateCategoryParams {
	var ()
	return &UpdateCategoryParams{

		timeout: timeout,
	}
}

// NewUpdateCategoryParamsWithContext creates a new UpdateCategoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateCategoryParamsWithContext(ctx context.Context) *UpdateCategoryParams {
	var ()
	return &UpdateCategoryParams{

		Context: ctx,
	}
}

// NewUpdateCategoryParamsWithHTTPClient creates a new UpdateCategoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateCategoryParamsWithHTTPClient(client *http.Client) *UpdateCategoryParams {
	var ()
	return &UpdateCategoryParams{
		HTTPClient: client,
	}
}

/*UpdateCategoryParams contains all the parameters to send to the API endpoint
for the update category operation typically these are written to a http.Request
*/
type UpdateCategoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.CategoryUpdate
	/*CategoryPath*/
	CategoryPath string
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

// WithTimeout adds the timeout to the update category params
func (o *UpdateCategoryParams) WithTimeout(timeout time.Duration) *UpdateCategoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update category params
func (o *UpdateCategoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update category params
func (o *UpdateCategoryParams) WithContext(ctx context.Context) *UpdateCategoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update category params
func (o *UpdateCategoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update category params
func (o *UpdateCategoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update category params
func (o *UpdateCategoryParams) WithHTTPClient(client *http.Client) *UpdateCategoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update category params
func (o *UpdateCategoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update category params
func (o *UpdateCategoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update category params
func (o *UpdateCategoryParams) WithBody(body *platformclientmodels.CategoryUpdate) *UpdateCategoryParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update category params
func (o *UpdateCategoryParams) SetBody(body *platformclientmodels.CategoryUpdate) {
	o.Body = body
}

// WithCategoryPath adds the categoryPath to the update category params
func (o *UpdateCategoryParams) WithCategoryPath(categoryPath string) *UpdateCategoryParams {
	o.SetCategoryPath(categoryPath)
	return o
}

// SetCategoryPath adds the categoryPath to the update category params
func (o *UpdateCategoryParams) SetCategoryPath(categoryPath string) {
	o.CategoryPath = categoryPath
}

// WithNamespace adds the namespace to the update category params
func (o *UpdateCategoryParams) WithNamespace(namespace string) *UpdateCategoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update category params
func (o *UpdateCategoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the update category params
func (o *UpdateCategoryParams) WithStoreID(storeID string) *UpdateCategoryParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the update category params
func (o *UpdateCategoryParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateCategoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param categoryPath
	if err := r.SetPathParam("categoryPath", o.CategoryPath); err != nil {
		return err
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
