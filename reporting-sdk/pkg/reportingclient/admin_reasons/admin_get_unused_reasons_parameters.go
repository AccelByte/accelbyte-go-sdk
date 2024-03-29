// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_reasons

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

// NewAdminGetUnusedReasonsParams creates a new AdminGetUnusedReasonsParams object
// with the default values initialized.
func NewAdminGetUnusedReasonsParams() *AdminGetUnusedReasonsParams {
	var ()
	return &AdminGetUnusedReasonsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUnusedReasonsParamsWithTimeout creates a new AdminGetUnusedReasonsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUnusedReasonsParamsWithTimeout(timeout time.Duration) *AdminGetUnusedReasonsParams {
	var ()
	return &AdminGetUnusedReasonsParams{

		timeout: timeout,
	}
}

// NewAdminGetUnusedReasonsParamsWithContext creates a new AdminGetUnusedReasonsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUnusedReasonsParamsWithContext(ctx context.Context) *AdminGetUnusedReasonsParams {
	var ()
	return &AdminGetUnusedReasonsParams{

		Context: ctx,
	}
}

// NewAdminGetUnusedReasonsParamsWithHTTPClient creates a new AdminGetUnusedReasonsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUnusedReasonsParamsWithHTTPClient(client *http.Client) *AdminGetUnusedReasonsParams {
	var ()
	return &AdminGetUnusedReasonsParams{
		HTTPClient: client,
	}
}

/*AdminGetUnusedReasonsParams contains all the parameters to send to the API endpoint
for the admin get unused reasons operation typically these are written to a http.Request
*/
type AdminGetUnusedReasonsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*ExtensionCategory*/
	ExtensionCategory *string
	/*Category*/
	Category string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get unused reasons params
func (o *AdminGetUnusedReasonsParams) WithTimeout(timeout time.Duration) *AdminGetUnusedReasonsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get unused reasons params
func (o *AdminGetUnusedReasonsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get unused reasons params
func (o *AdminGetUnusedReasonsParams) WithContext(ctx context.Context) *AdminGetUnusedReasonsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get unused reasons params
func (o *AdminGetUnusedReasonsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get unused reasons params
func (o *AdminGetUnusedReasonsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get unused reasons params
func (o *AdminGetUnusedReasonsParams) WithHTTPClient(client *http.Client) *AdminGetUnusedReasonsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get unused reasons params
func (o *AdminGetUnusedReasonsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get unused reasons params
func (o *AdminGetUnusedReasonsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetUnusedReasonsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get unused reasons params
func (o *AdminGetUnusedReasonsParams) WithNamespace(namespace string) *AdminGetUnusedReasonsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get unused reasons params
func (o *AdminGetUnusedReasonsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithExtensionCategory adds the extensionCategory to the admin get unused reasons params
func (o *AdminGetUnusedReasonsParams) WithExtensionCategory(extensionCategory *string) *AdminGetUnusedReasonsParams {
	o.SetExtensionCategory(extensionCategory)
	return o
}

// SetExtensionCategory adds the extensionCategory to the admin get unused reasons params
func (o *AdminGetUnusedReasonsParams) SetExtensionCategory(extensionCategory *string) {
	o.ExtensionCategory = extensionCategory
}

// WithCategory adds the category to the admin get unused reasons params
func (o *AdminGetUnusedReasonsParams) WithCategory(category string) *AdminGetUnusedReasonsParams {
	o.SetCategory(category)
	return o
}

// SetCategory adds the category to the admin get unused reasons params
func (o *AdminGetUnusedReasonsParams) SetCategory(category string) {
	o.Category = category
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUnusedReasonsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ExtensionCategory != nil {

		// query param extensionCategory
		var qrExtensionCategory string
		if o.ExtensionCategory != nil {
			qrExtensionCategory = *o.ExtensionCategory
		}
		qExtensionCategory := qrExtensionCategory
		if qExtensionCategory != "" {
			if err := r.SetQueryParam("extensionCategory", qExtensionCategory); err != nil {
				return err
			}
		}

	}

	// query param category
	qrCategory := o.Category
	qCategory := qrCategory
	if qCategory != "" {
		if err := r.SetQueryParam("category", qCategory); err != nil {
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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
