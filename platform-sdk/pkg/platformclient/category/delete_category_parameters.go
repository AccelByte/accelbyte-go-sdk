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
)

// NewDeleteCategoryParams creates a new DeleteCategoryParams object
// with the default values initialized.
func NewDeleteCategoryParams() *DeleteCategoryParams {
	var ()
	return &DeleteCategoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteCategoryParamsWithTimeout creates a new DeleteCategoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteCategoryParamsWithTimeout(timeout time.Duration) *DeleteCategoryParams {
	var ()
	return &DeleteCategoryParams{

		timeout: timeout,
	}
}

// NewDeleteCategoryParamsWithContext creates a new DeleteCategoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteCategoryParamsWithContext(ctx context.Context) *DeleteCategoryParams {
	var ()
	return &DeleteCategoryParams{

		Context: ctx,
	}
}

// NewDeleteCategoryParamsWithHTTPClient creates a new DeleteCategoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteCategoryParamsWithHTTPClient(client *http.Client) *DeleteCategoryParams {
	var ()
	return &DeleteCategoryParams{
		HTTPClient: client,
	}
}

/*DeleteCategoryParams contains all the parameters to send to the API endpoint
for the delete category operation typically these are written to a http.Request
*/
type DeleteCategoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the delete category params
func (o *DeleteCategoryParams) WithTimeout(timeout time.Duration) *DeleteCategoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete category params
func (o *DeleteCategoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete category params
func (o *DeleteCategoryParams) WithContext(ctx context.Context) *DeleteCategoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete category params
func (o *DeleteCategoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete category params
func (o *DeleteCategoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete category params
func (o *DeleteCategoryParams) WithHTTPClient(client *http.Client) *DeleteCategoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete category params
func (o *DeleteCategoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete category params
func (o *DeleteCategoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCategoryPath adds the categoryPath to the delete category params
func (o *DeleteCategoryParams) WithCategoryPath(categoryPath string) *DeleteCategoryParams {
	o.SetCategoryPath(categoryPath)
	return o
}

// SetCategoryPath adds the categoryPath to the delete category params
func (o *DeleteCategoryParams) SetCategoryPath(categoryPath string) {
	o.CategoryPath = categoryPath
}

// WithNamespace adds the namespace to the delete category params
func (o *DeleteCategoryParams) WithNamespace(namespace string) *DeleteCategoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete category params
func (o *DeleteCategoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the delete category params
func (o *DeleteCategoryParams) WithStoreID(storeID string) *DeleteCategoryParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the delete category params
func (o *DeleteCategoryParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteCategoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
