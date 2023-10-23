// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewPublicSearchContentParams creates a new PublicSearchContentParams object
// with the default values initialized.
func NewPublicSearchContentParams() *PublicSearchContentParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicSearchContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicSearchContentParamsWithTimeout creates a new PublicSearchContentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicSearchContentParamsWithTimeout(timeout time.Duration) *PublicSearchContentParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicSearchContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicSearchContentParamsWithContext creates a new PublicSearchContentParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicSearchContentParamsWithContext(ctx context.Context) *PublicSearchContentParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicSearchContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewPublicSearchContentParamsWithHTTPClient creates a new PublicSearchContentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicSearchContentParamsWithHTTPClient(client *http.Client) *PublicSearchContentParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicSearchContentParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*PublicSearchContentParams contains all the parameters to send to the API endpoint
for the public search content operation typically these are written to a http.Request
*/
type PublicSearchContentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Creator
	  creator name

	*/
	Creator *string
	/*Ishidden
	  set to true to list only hidden contents, false to list only non-hidden contents

	*/
	Ishidden *string
	/*Isofficial
	  filter only official contents (boolean)

	*/
	Isofficial *string
	/*Limit
	  number of content per page

	*/
	Limit *int64
	/*Name
	  content name

	*/
	Name *string
	/*Offset
	  the offset number to retrieve

	*/
	Offset *int64
	/*Orderby
	  sorting order: asc, desc. default=desc

	*/
	Orderby *string
	/*Sortby
	  sorting criteria: name,download,like,date,updatedTime. default=date

	*/
	Sortby *string
	/*Subtype
	  content subtype

	*/
	Subtype *string
	/*Tags
	  content tag

	*/
	Tags []string
	/*Type
	  content type

	*/
	Type *string
	/*UserID
	  user ID

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public search content params
func (o *PublicSearchContentParams) WithTimeout(timeout time.Duration) *PublicSearchContentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public search content params
func (o *PublicSearchContentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public search content params
func (o *PublicSearchContentParams) WithContext(ctx context.Context) *PublicSearchContentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public search content params
func (o *PublicSearchContentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public search content params
func (o *PublicSearchContentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public search content params
func (o *PublicSearchContentParams) WithHTTPClient(client *http.Client) *PublicSearchContentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public search content params
func (o *PublicSearchContentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public search content params
func (o *PublicSearchContentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public search content params
func (o *PublicSearchContentParams) WithNamespace(namespace string) *PublicSearchContentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public search content params
func (o *PublicSearchContentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCreator adds the creator to the public search content params
func (o *PublicSearchContentParams) WithCreator(creator *string) *PublicSearchContentParams {
	o.SetCreator(creator)
	return o
}

// SetCreator adds the creator to the public search content params
func (o *PublicSearchContentParams) SetCreator(creator *string) {
	o.Creator = creator
}

// WithIshidden adds the ishidden to the public search content params
func (o *PublicSearchContentParams) WithIshidden(ishidden *string) *PublicSearchContentParams {
	o.SetIshidden(ishidden)
	return o
}

// SetIshidden adds the ishidden to the public search content params
func (o *PublicSearchContentParams) SetIshidden(ishidden *string) {
	o.Ishidden = ishidden
}

// WithIsofficial adds the isofficial to the public search content params
func (o *PublicSearchContentParams) WithIsofficial(isofficial *string) *PublicSearchContentParams {
	o.SetIsofficial(isofficial)
	return o
}

// SetIsofficial adds the isofficial to the public search content params
func (o *PublicSearchContentParams) SetIsofficial(isofficial *string) {
	o.Isofficial = isofficial
}

// WithLimit adds the limit to the public search content params
func (o *PublicSearchContentParams) WithLimit(limit *int64) *PublicSearchContentParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public search content params
func (o *PublicSearchContentParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithName adds the name to the public search content params
func (o *PublicSearchContentParams) WithName(name *string) *PublicSearchContentParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the public search content params
func (o *PublicSearchContentParams) SetName(name *string) {
	o.Name = name
}

// WithOffset adds the offset to the public search content params
func (o *PublicSearchContentParams) WithOffset(offset *int64) *PublicSearchContentParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public search content params
func (o *PublicSearchContentParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrderby adds the orderby to the public search content params
func (o *PublicSearchContentParams) WithOrderby(orderby *string) *PublicSearchContentParams {
	o.SetOrderby(orderby)
	return o
}

// SetOrderby adds the orderby to the public search content params
func (o *PublicSearchContentParams) SetOrderby(orderby *string) {
	o.Orderby = orderby
}

// WithSortby adds the sortby to the public search content params
func (o *PublicSearchContentParams) WithSortby(sortby *string) *PublicSearchContentParams {
	o.SetSortby(sortby)
	return o
}

// SetSortby adds the sortby to the public search content params
func (o *PublicSearchContentParams) SetSortby(sortby *string) {
	o.Sortby = sortby
}

// WithSubtype adds the subtype to the public search content params
func (o *PublicSearchContentParams) WithSubtype(subtype *string) *PublicSearchContentParams {
	o.SetSubtype(subtype)
	return o
}

// SetSubtype adds the subtype to the public search content params
func (o *PublicSearchContentParams) SetSubtype(subtype *string) {
	o.Subtype = subtype
}

// WithTags adds the tags to the public search content params
func (o *PublicSearchContentParams) WithTags(tags []string) *PublicSearchContentParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the public search content params
func (o *PublicSearchContentParams) SetTags(tags []string) {
	o.Tags = tags
}

// WithType adds the typeVar to the public search content params
func (o *PublicSearchContentParams) WithType(typeVar *string) *PublicSearchContentParams {
	o.SetType(typeVar)
	return o
}

// SetType adds the type to the public search content params
func (o *PublicSearchContentParams) SetType(typeVar *string) {
	o.Type = typeVar
}

// WithUserID adds the userID to the public search content params
func (o *PublicSearchContentParams) WithUserID(userID *string) *PublicSearchContentParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public search content params
func (o *PublicSearchContentParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicSearchContentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Creator != nil {

		// query param creator
		var qrCreator string
		if o.Creator != nil {
			qrCreator = *o.Creator
		}
		qCreator := qrCreator
		if qCreator != "" {
			if err := r.SetQueryParam("creator", qCreator); err != nil {
				return err
			}
		}

	}

	if o.Ishidden != nil {

		// query param ishidden
		var qrIshidden string
		if o.Ishidden != nil {
			qrIshidden = *o.Ishidden
		}
		qIshidden := qrIshidden
		if qIshidden != "" {
			if err := r.SetQueryParam("ishidden", qIshidden); err != nil {
				return err
			}
		}

	}

	if o.Isofficial != nil {

		// query param isofficial
		var qrIsofficial string
		if o.Isofficial != nil {
			qrIsofficial = *o.Isofficial
		}
		qIsofficial := qrIsofficial
		if qIsofficial != "" {
			if err := r.SetQueryParam("isofficial", qIsofficial); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Name != nil {

		// query param name
		var qrName string
		if o.Name != nil {
			qrName = *o.Name
		}
		qName := qrName
		if qName != "" {
			if err := r.SetQueryParam("name", qName); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.Orderby != nil {

		// query param orderby
		var qrOrderby string
		if o.Orderby != nil {
			qrOrderby = *o.Orderby
		}
		qOrderby := qrOrderby
		if qOrderby != "" {
			if err := r.SetQueryParam("orderby", qOrderby); err != nil {
				return err
			}
		}

	}

	if o.Sortby != nil {

		// query param sortby
		var qrSortby string
		if o.Sortby != nil {
			qrSortby = *o.Sortby
		}
		qSortby := qrSortby
		if qSortby != "" {
			if err := r.SetQueryParam("sortby", qSortby); err != nil {
				return err
			}
		}

	}

	if o.Subtype != nil {

		// query param subtype
		var qrSubtype string
		if o.Subtype != nil {
			qrSubtype = *o.Subtype
		}
		qSubtype := qrSubtype
		if qSubtype != "" {
			if err := r.SetQueryParam("subtype", qSubtype); err != nil {
				return err
			}
		}

	}

	valuesTags := o.Tags

	joinedTags := swag.JoinByFormat(valuesTags, "csv")
	// query array param tags
	if err := r.SetQueryParam("tags", joinedTags...); err != nil {
		return err
	}

	if o.Type != nil {

		// query param type
		var qrType string
		if o.Type != nil {
			qrType = *o.Type
		}
		qType := qrType
		if qType != "" {
			if err := r.SetQueryParam("type", qType); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param userId
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("userId", qUserID); err != nil {
				return err
			}
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
