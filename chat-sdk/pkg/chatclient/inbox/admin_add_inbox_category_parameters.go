// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inbox

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
)

// NewAdminAddInboxCategoryParams creates a new AdminAddInboxCategoryParams object
// with the default values initialized.
func NewAdminAddInboxCategoryParams() *AdminAddInboxCategoryParams {
	var ()
	return &AdminAddInboxCategoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminAddInboxCategoryParamsWithTimeout creates a new AdminAddInboxCategoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminAddInboxCategoryParamsWithTimeout(timeout time.Duration) *AdminAddInboxCategoryParams {
	var ()
	return &AdminAddInboxCategoryParams{

		timeout: timeout,
	}
}

// NewAdminAddInboxCategoryParamsWithContext creates a new AdminAddInboxCategoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminAddInboxCategoryParamsWithContext(ctx context.Context) *AdminAddInboxCategoryParams {
	var ()
	return &AdminAddInboxCategoryParams{

		Context: ctx,
	}
}

// NewAdminAddInboxCategoryParamsWithHTTPClient creates a new AdminAddInboxCategoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminAddInboxCategoryParamsWithHTTPClient(client *http.Client) *AdminAddInboxCategoryParams {
	var ()
	return &AdminAddInboxCategoryParams{
		HTTPClient: client,
	}
}

/*AdminAddInboxCategoryParams contains all the parameters to send to the API endpoint
for the admin add inbox category operation typically these are written to a http.Request
*/
type AdminAddInboxCategoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.ModelsAddInboxCategoryRequest
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin add inbox category params
func (o *AdminAddInboxCategoryParams) WithTimeout(timeout time.Duration) *AdminAddInboxCategoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin add inbox category params
func (o *AdminAddInboxCategoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin add inbox category params
func (o *AdminAddInboxCategoryParams) WithContext(ctx context.Context) *AdminAddInboxCategoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin add inbox category params
func (o *AdminAddInboxCategoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin add inbox category params
func (o *AdminAddInboxCategoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin add inbox category params
func (o *AdminAddInboxCategoryParams) WithHTTPClient(client *http.Client) *AdminAddInboxCategoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin add inbox category params
func (o *AdminAddInboxCategoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin add inbox category params
func (o *AdminAddInboxCategoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminAddInboxCategoryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin add inbox category params
func (o *AdminAddInboxCategoryParams) WithBody(body *chatclientmodels.ModelsAddInboxCategoryRequest) *AdminAddInboxCategoryParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin add inbox category params
func (o *AdminAddInboxCategoryParams) SetBody(body *chatclientmodels.ModelsAddInboxCategoryRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin add inbox category params
func (o *AdminAddInboxCategoryParams) WithNamespace(namespace string) *AdminAddInboxCategoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin add inbox category params
func (o *AdminAddInboxCategoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminAddInboxCategoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
