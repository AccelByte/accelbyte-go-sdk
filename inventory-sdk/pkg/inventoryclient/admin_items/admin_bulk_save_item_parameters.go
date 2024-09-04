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

// NewAdminBulkSaveItemParams creates a new AdminBulkSaveItemParams object
// with the default values initialized.
func NewAdminBulkSaveItemParams() *AdminBulkSaveItemParams {
	var ()
	return &AdminBulkSaveItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminBulkSaveItemParamsWithTimeout creates a new AdminBulkSaveItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminBulkSaveItemParamsWithTimeout(timeout time.Duration) *AdminBulkSaveItemParams {
	var ()
	return &AdminBulkSaveItemParams{

		timeout: timeout,
	}
}

// NewAdminBulkSaveItemParamsWithContext creates a new AdminBulkSaveItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminBulkSaveItemParamsWithContext(ctx context.Context) *AdminBulkSaveItemParams {
	var ()
	return &AdminBulkSaveItemParams{

		Context: ctx,
	}
}

// NewAdminBulkSaveItemParamsWithHTTPClient creates a new AdminBulkSaveItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminBulkSaveItemParamsWithHTTPClient(client *http.Client) *AdminBulkSaveItemParams {
	var ()
	return &AdminBulkSaveItemParams{
		HTTPClient: client,
	}
}

/*AdminBulkSaveItemParams contains all the parameters to send to the API endpoint
for the admin bulk save item operation typically these are written to a http.Request
*/
type AdminBulkSaveItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*inventoryclientmodels.ApimodelsSaveItemReq
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

// WithTimeout adds the timeout to the admin bulk save item params
func (o *AdminBulkSaveItemParams) WithTimeout(timeout time.Duration) *AdminBulkSaveItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin bulk save item params
func (o *AdminBulkSaveItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin bulk save item params
func (o *AdminBulkSaveItemParams) WithContext(ctx context.Context) *AdminBulkSaveItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin bulk save item params
func (o *AdminBulkSaveItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin bulk save item params
func (o *AdminBulkSaveItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin bulk save item params
func (o *AdminBulkSaveItemParams) WithHTTPClient(client *http.Client) *AdminBulkSaveItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin bulk save item params
func (o *AdminBulkSaveItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin bulk save item params
func (o *AdminBulkSaveItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminBulkSaveItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin bulk save item params
func (o *AdminBulkSaveItemParams) WithBody(body []*inventoryclientmodels.ApimodelsSaveItemReq) *AdminBulkSaveItemParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin bulk save item params
func (o *AdminBulkSaveItemParams) SetBody(body []*inventoryclientmodels.ApimodelsSaveItemReq) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin bulk save item params
func (o *AdminBulkSaveItemParams) WithNamespace(namespace string) *AdminBulkSaveItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin bulk save item params
func (o *AdminBulkSaveItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin bulk save item params
func (o *AdminBulkSaveItemParams) WithUserID(userID string) *AdminBulkSaveItemParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin bulk save item params
func (o *AdminBulkSaveItemParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminBulkSaveItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
