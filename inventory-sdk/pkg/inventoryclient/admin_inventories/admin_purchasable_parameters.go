// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_inventories

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

// NewAdminPurchasableParams creates a new AdminPurchasableParams object
// with the default values initialized.
func NewAdminPurchasableParams() *AdminPurchasableParams {
	var ()
	return &AdminPurchasableParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPurchasableParamsWithTimeout creates a new AdminPurchasableParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPurchasableParamsWithTimeout(timeout time.Duration) *AdminPurchasableParams {
	var ()
	return &AdminPurchasableParams{

		timeout: timeout,
	}
}

// NewAdminPurchasableParamsWithContext creates a new AdminPurchasableParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPurchasableParamsWithContext(ctx context.Context) *AdminPurchasableParams {
	var ()
	return &AdminPurchasableParams{

		Context: ctx,
	}
}

// NewAdminPurchasableParamsWithHTTPClient creates a new AdminPurchasableParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPurchasableParamsWithHTTPClient(client *http.Client) *AdminPurchasableParams {
	var ()
	return &AdminPurchasableParams{
		HTTPClient: client,
	}
}

/*AdminPurchasableParams contains all the parameters to send to the API endpoint
for the admin purchasable operation typically these are written to a http.Request
*/
type AdminPurchasableParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *inventoryclientmodels.ApimodelsPurchaseValidationReq
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

// WithTimeout adds the timeout to the admin purchasable params
func (o *AdminPurchasableParams) WithTimeout(timeout time.Duration) *AdminPurchasableParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin purchasable params
func (o *AdminPurchasableParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin purchasable params
func (o *AdminPurchasableParams) WithContext(ctx context.Context) *AdminPurchasableParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin purchasable params
func (o *AdminPurchasableParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin purchasable params
func (o *AdminPurchasableParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin purchasable params
func (o *AdminPurchasableParams) WithHTTPClient(client *http.Client) *AdminPurchasableParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin purchasable params
func (o *AdminPurchasableParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin purchasable params
func (o *AdminPurchasableParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminPurchasableParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin purchasable params
func (o *AdminPurchasableParams) WithBody(body *inventoryclientmodels.ApimodelsPurchaseValidationReq) *AdminPurchasableParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin purchasable params
func (o *AdminPurchasableParams) SetBody(body *inventoryclientmodels.ApimodelsPurchaseValidationReq) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin purchasable params
func (o *AdminPurchasableParams) WithNamespace(namespace string) *AdminPurchasableParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin purchasable params
func (o *AdminPurchasableParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin purchasable params
func (o *AdminPurchasableParams) WithUserID(userID string) *AdminPurchasableParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin purchasable params
func (o *AdminPurchasableParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPurchasableParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
