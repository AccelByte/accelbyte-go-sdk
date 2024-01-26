// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_items

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclientmodels"
)

// NewAdminSaveItemParams creates a new AdminSaveItemParams object
// with the default values initialized.
func NewAdminSaveItemParams() *AdminSaveItemParams {
	var ()
	return &AdminSaveItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminSaveItemParamsWithTimeout creates a new AdminSaveItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminSaveItemParamsWithTimeout(timeout time.Duration) *AdminSaveItemParams {
	var ()
	return &AdminSaveItemParams{

		timeout: timeout,
	}
}

// NewAdminSaveItemParamsWithContext creates a new AdminSaveItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminSaveItemParamsWithContext(ctx context.Context) *AdminSaveItemParams {
	var ()
	return &AdminSaveItemParams{

		Context: ctx,
	}
}

// NewAdminSaveItemParamsWithHTTPClient creates a new AdminSaveItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminSaveItemParamsWithHTTPClient(client *http.Client) *AdminSaveItemParams {
	var ()
	return &AdminSaveItemParams{
		HTTPClient: client,
	}
}

/*AdminSaveItemParams contains all the parameters to send to the API endpoint
for the admin save item operation typically these are written to a http.Request
*/
type AdminSaveItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *inventoryclientmodels.ApimodelsSaveItemReq
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  UserID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin save item params
func (o *AdminSaveItemParams) WithTimeout(timeout time.Duration) *AdminSaveItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin save item params
func (o *AdminSaveItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin save item params
func (o *AdminSaveItemParams) WithContext(ctx context.Context) *AdminSaveItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin save item params
func (o *AdminSaveItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin save item params
func (o *AdminSaveItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin save item params
func (o *AdminSaveItemParams) WithHTTPClient(client *http.Client) *AdminSaveItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin save item params
func (o *AdminSaveItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin save item params
func (o *AdminSaveItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminSaveItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin save item params
func (o *AdminSaveItemParams) WithBody(body *inventoryclientmodels.ApimodelsSaveItemReq) *AdminSaveItemParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin save item params
func (o *AdminSaveItemParams) SetBody(body *inventoryclientmodels.ApimodelsSaveItemReq) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin save item params
func (o *AdminSaveItemParams) WithNamespace(namespace string) *AdminSaveItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin save item params
func (o *AdminSaveItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin save item params
func (o *AdminSaveItemParams) WithUserID(userID string) *AdminSaveItemParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin save item params
func (o *AdminSaveItemParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminSaveItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
